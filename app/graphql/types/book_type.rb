module Types
  class BookType < Types::BaseObject

    field :title, String,null: true
    field :author, String,null: true
    field :genre, String, null: true

  end
end
