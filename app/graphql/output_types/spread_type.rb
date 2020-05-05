module OutputTypes
  class SpreadType < OutputTypes::BaseObject

     field :id, ID,null: false
     field :sale_spread, String, null: true
     field :currency, String, null: true
     
   end
 end
