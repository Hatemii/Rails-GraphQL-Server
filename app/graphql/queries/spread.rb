module Queries
  class Spread < Queries::BaseQuery

     type [OutputTypes::SpreadType], null: false

     argument :id, ID, required: false
     argument :user_id, ID, required: false
     argument :group_id, ID, required: false


    def resolve(id: nil,user_id:nil,group_id:nil)
      if id
        ::Spread.where(id: id)

      else
        ::Spread.all

      end
    end

  end
end
