module Types
  class QueryType < Types::BaseObject

     field :users, resolver: Queries::User
     field :books, resolver: Queries::Book
     field :games, resolver: Queries::Game


 end
end
