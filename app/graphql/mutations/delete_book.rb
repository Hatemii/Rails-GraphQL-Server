

class Mutations::DeleteBook < Mutations::BaseMutation

  argument :attributes, InputTypes::BookInputType, required: true


  def resolve(attributes:)

     book = Book.find(attributes[:id])

     book.destroy
     book.save
     book

  end
end
