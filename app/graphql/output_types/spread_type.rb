module OutputTypes
  class SpreadType < OutputTypes::BaseObject

     field :id, ID,null: false
     field :currency, String, null: true
     field :sale_spread, String, null: true

   end
 end
