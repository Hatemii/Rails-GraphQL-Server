module OutputTypes
  class BookType < OutputTypes::BaseObject

    field :id, ID,null: false
    field :title, String,null: true
    field :author, String,null: true
    field :genre, String, null: true

  end
end
