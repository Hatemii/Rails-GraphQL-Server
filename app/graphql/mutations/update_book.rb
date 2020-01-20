class Mutations::UpdateBook < Mutations::BaseMutation

  argument :id, ID, required: true
  argument :author, String, required: false
  argument :title, String, required: false
  argument :genre, String, required: false


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
