module Types
  class MutationType < Types::BaseObject


    field :create_user, mutation: Mutations::CreateUser
    field :create_games, mutation: Mutations::CreateGames
    field :create_book, mutation: Mutations::CreateBook


    field :update_user, mutation: Mutations::UpdateUser
    field :update_games, mutation: Mutations::UpdateGames
    field :update_book, mutation: Mutations::UpdateBook


    field :delete_user, mutation: Mutations::DeleteUser
    field :delete_games, mutation: Mutations::DeleteGames
    field :delete_book, mutation: Mutations::DeleteBook



  end
end
