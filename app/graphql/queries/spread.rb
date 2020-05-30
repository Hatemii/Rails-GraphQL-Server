module Queries
  class Spread < Queries::BaseQuery

    type [OutputTypes::SpreadType], null: false

    argument :spread_id, ID, required: false
    argument :user_id, ID, required: false

    def resolve(spread_id: nil,user_id:nil)
      
      currencies = ["EUR","GBP","USD","CHF","ALB","DENAR","KRUNA"]

      if user_id
        user_currency = ::User.find(user_id).spreads.pluck(:currency)

        if currencies - user_currency == []
          ::User.find(user_id).spreads.order("id ASC")

        else
          left_currency = currencies - user_currency
          default_spread = ::Spread.where(spreadable_id:nil, spreadable_type:nil, currency:left_currency)
          user_spread = ::User.find(user_id).spreads
          user_spread.or(default_spread).order("id ASC")
        end

      else
        ::Spread.where(spreadable_id:nil,spreadable_type:nil).order("id ASC")
      end

    end
  end
end


# The query first will check for users_spread (user 1 may have only "USD","EUR") .. if there
# are currencies that user doesn't have from here ["EUR","GBP","USD","CHF","ALB","DENAR","KRUNA"]
# with this method -> "currencies - user_currency == []"
# else we will find where this other currencies belongs to
# and then we will return "user_spread.or(default_spread).order("id ASC")"
# both users_spread and other spread together
