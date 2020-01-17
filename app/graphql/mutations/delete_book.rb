class Mutations::DeleteBook < Mutations::BaseMutation

  argument :id, Integer, required: false
  argument :author, String, required: false
  argument :title, String, required: false
  argument :genre, String, required: false


  field :book, Types::BookType, null: false
  field :errors,[String], null: false

  def resolve(id:)
    book = Book.find_by(id:id)
    book.destroy
    {book: book}
  end

end
