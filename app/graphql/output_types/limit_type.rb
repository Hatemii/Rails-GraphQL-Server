module OutputTypes
  class LimitType < OutputTypes::BaseObject

     field :id, ID,null: false
     field :limit, String, null: true
     field :success, Boolean, null: true

   end
 end
