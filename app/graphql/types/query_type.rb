module Types
  class QueryType < Types::BaseObject

     field :users, resolver: Queries::User
     field :books, resolver: Queries::Book
     field :games, resolver: Queries::Game

     field :spreads, resolver: Queries::Spread
     field :groups, resolver: Queries::Group



 end
end
