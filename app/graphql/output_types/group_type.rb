module OutputTypes
  class GroupType < OutputTypes::BaseObject

     field :id, ID,null: false
     field :purchase_spread, String, null: true
     field :sale_spread, String, null: true
     
   end
 end
