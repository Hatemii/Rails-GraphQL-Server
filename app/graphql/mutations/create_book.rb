class Mutations::CreateBook < Mutations::BaseMutation

  argument :author, String, required: true
  argument :title, String, required: true
  argument :genre, String, required: true


  def resolve(author:, title:, genre:)
    book = Book.new(author: author,title: title,genre: genre)

    if book.save
    {
      book: book,
      errors: []
    }
  else
    {
      book: nil,
      errors: book.errors.full_messages
    }
    end
  end
end
