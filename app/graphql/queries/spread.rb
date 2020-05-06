module Queries
  class Spread < Queries::BaseQuery

     type [OutputTypes::SpreadType], null: false

     argument :spread_id, ID, required: false
     argument :user_id, ID, required: false
     argument :group_id, ID, required: false


    def resolve(spread_id: nil,user_id:nil,group_id:nil)
      if spread_id
        ::Spread.where(spread_id: spread_id)

      elsif user_id
        ::User.find(user_id).spreads.all.order("id ASC")

      elsif group_id
        ::Group.find(group_id).spreads.all.order("id ASC")
      else
        ::Spread.all.order("id ASC")
      end
    end
  end
end
