class Mutations::UpdateBook < Mutations::BaseMutation

  argument :id, Integer, required: false
  argument :author, String, required: false
  argument :title, String, required: false
  argument :genre, String, required: false


  field :book, Types::BookType, null: false
  field :errors,[String], null: false

  def resolve(id:,author:,title:,genre:)
     book = Book.find_by!(id: id)
     book.author=author
     book.title=title
     book.genre=genre
     book.save
     {book: book}
  end

end
