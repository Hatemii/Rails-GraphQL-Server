module OutputTypes
  class GameType < OutputTypes::BaseObject

     field :id, ID,null: true
     field :name, String, null: true
     field :genre, String, null: true
     field :platform, String, null: true

   end
 end
