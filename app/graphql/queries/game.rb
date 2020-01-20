module Queries
  class Game < Queries::BaseQuery

     argument :id, ID, required: false
     type [OutputTypes::GameType], null: false


    def resolve(id: nil)
      if id
        ::Game.where(id: id)
      else
        ::Game.all
      end
    end

  end
end
