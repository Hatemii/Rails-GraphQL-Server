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
 end

 def user(id:nil)
   User.find(id)
 end


##########################################################


field :games, [Types::GameType], null: false

  def games
    Game.all
  end

  field :game, Types::GameType, null: true do
    argument :id, ID, required: false
  end

  def game(id:nil)
    Game.find(id)
  end

##########################################################


  field :books, [Types::BookType], null: false

    def books
      Book.all
    end

    field :book, Types::BookType, null: true do
      argument :id, ID, required: false
      argument :author, String, required: false
    end

    def book (id:nil,author:nil)
      if(author)
        Book.where(author=author)
      else
        Book.find(id)
      end
    end




##########################################################


 end
end
