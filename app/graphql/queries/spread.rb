module Queries
  class Spread < Queries::BaseQuery

     argument :id, ID, required: false
     type [OutputTypes::SpreadType], null: false


    def resolve(id: nil)
      if id
        ::Spraed.where(id: id)
      else
        ::Spread.all
      end
    end

  end
end
