module OutputTypes
  class UserType < OutputTypes::BaseObject

     field :id, ID, null: true
     field :name, String, null: true
     field :email, String, null: true

   end
 end
