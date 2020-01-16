module Types
  class MutationType < Types::BaseObject

    field :create_user, mutation: Mutations::CreateUser
    field :create_games, mutation: Mutations::CreateGames

    field :update_user, mutation: Mutations::UpdateUser



  end
end
