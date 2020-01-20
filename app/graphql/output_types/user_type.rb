module OutputTypes
  class UserType < OutputTypes::BaseObject

     field :id, ID, null: false
     field :name, String, null: true
     field :email, String, null: true

   end
 end
