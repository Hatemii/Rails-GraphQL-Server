

class Mutations::DeleteBook < Mutations::BaseMutation

  argument :id, Integer, required: false
  argument :author, String, required: false
  argument :title, String, required: false
  argument :genre, String, required: false


  def resolve(id:)
    book = Book.find_by(id:id)
    book.destroy
    ajsd
    {book: book}
  end

end
