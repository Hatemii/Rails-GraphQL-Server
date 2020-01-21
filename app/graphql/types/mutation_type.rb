module Types
  class MutationType < Types::BaseObject


    field :create_user, OutputTypes::UserType, mutation: Mutations::CreateUser
    field :create_games,OutputTypes::GameType, mutation: Mutations::CreateGames
    field :create_book, OutputTypes::BookType, mutation: Mutations::CreateBook


    field :update_user, OutputTypes::UserType, mutation: Mutations::UpdateUser
    field :update_games,OutputTypes::GameType, mutation: Mutations::UpdateGames
    field :update_book, OutputTypes::BookType, mutation: Mutations::UpdateBook


    field :delete_user, OutputTypes::UserType, mutation: Mutations::DeleteUser
    field :delete_games,OutputTypes::GameType, mutation: Mutations::DeleteGames
    field :delete_book, OutputTypes::BookType, mutation: Mutations::DeleteBook



  end
end
