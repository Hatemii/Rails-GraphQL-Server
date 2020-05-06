module Queries
  class Spread < Queries::BaseQuery

     type [OutputTypes::SpreadType], null: false

     argument :spread_id, ID, required: false
     argument :user_id, ID, required: false
     argument :group_id, ID, required: false


    def resolve(spread_id: nil,user_id:nil,group_id:nil)
      currencies = ["EUR","GBP","ALB","USD","CHF"]

      if spread_id
        ::Spread.where(spread_id: spread_id)

      elsif user_id
        user_exceptional_currencies = ::User.find(user_id).spreads.pluck(:currency)
        if currencies - user_exceptional_currencies == []
          ::User.find(user_id).spreads.all.order("id ASC")
        else
          raise GraphQL::ExecutionError, "User with id #{user_id} has only #{::User.find(user_id).spreads.pluck(:currency)} , check currencies for more"

        end

      elsif group_id
        ::Group.find(group_id).spreads.all.order("id ASC")

      else
        ::Spread.all.where(spreadable_id:nil,spreadable_type:nil).order("id ASC")

      end
    end
  end
end

# example
#[1,2,3,4,5] - [1,3,4] == [2,5]
