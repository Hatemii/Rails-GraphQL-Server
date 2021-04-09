module Types
  class QueryType < Types::BaseObject

     field :users, resolver: Queries::User
     field :books, resolver: Queries::Book
     field :games, resolver: Queries::Game
     field :banks, resolver: Queries::BankAccount


     field :spreads, resolver: Queries::Spread
     field :groups, resolver: Queries::Group
     field :limits, resolver: Queries::Limit




 end
end
