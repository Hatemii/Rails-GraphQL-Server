module Types
  class MutationType < Types::BaseObject

    field :create_user, mutation: Mutations::CreateUser
    field :create_games, mutation: Mutations::CreateGames




  end
end
