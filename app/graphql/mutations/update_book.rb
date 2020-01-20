class UpdateBook < Mutations::BaseMutation

  argument :attributes, InputTypes::BookInputType, required: true

  def resolve(id:,author:nil,title:nil,genre:nil)
     book = Book.find(id)
     if author
       book.author = author
     elsif title
       book.title = title
     else genre
       book.genre = genre
     end

   book.save
   {book: book}
  end
end
