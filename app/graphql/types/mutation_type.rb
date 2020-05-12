module Types
  class MutationType < Types::BaseObject


    field :create_user, OutputTypes::UserType, mutation: Mutations::CreateUser
    field :create_games,OutputTypes::GameType, mutation: Mutations::CreateGames
    field :create_books, OutputTypes::BookType, mutation: Mutations::CreateBook


    field :create_spread, OutputTypes::SpreadType, mutation: Mutations::CreateSpread
    field :create_group, OutputTypes::GroupType, mutation: Mutations::CreateGroup
    field :create_bank_accounts, OutputTypes::BankAccountType, mutation: Mutations::CreateBankAccount


    field :delete_user, OutputTypes::UserType, mutation: Mutations::DeleteUser
    field :delete_games,OutputTypes::GameType, mutation: Mutations::DeleteGames
    field :delete_book, OutputTypes::BookType, mutation: Mutations::DeleteBook



  end
end
