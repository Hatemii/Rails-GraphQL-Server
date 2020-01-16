module Types
  class MutationType < Types::BaseObject


    field :create_user, mutation: Mutations::CreateUser
    field :create_games, mutation: Mutations::CreateGames


    field :update_user, mutation: Mutations::UpdateUser
    field :update_games, mutation: Mutations::UpdateGames


    field :delete_user, mutation: Mutations::DeleteUser
    field :delete_games, mutation: Mutations::DeleteGames


  end
end
