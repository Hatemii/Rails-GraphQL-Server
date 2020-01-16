module Types
  class GameType < Types::BaseObject

     field :name, String, null: true
     field :genre, String, null: true
     field :platform, String, null: true

   end
 end
