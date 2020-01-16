module Types
  class QueryType < Types::BaseObject

    # /users
 field :users, [Types::UserType], null: false

 def users
   User.all
 end

 # /user/:id
 field :user, Types::UserType, null: true do
   argument :id, ID, required: false
   argument :name, String, required: false
 end

 def user(id:nil, name:nil)
   if(name)
     User.where(name)
   else
      User.find(id)
   end
end

##########################################################

field :games, [Types::GameType], null: false

  def games
    Game.all
  end

end
end
