

class Mutations::CreateBook < Mutations::BaseMutation

  argument :attributes, InputTypes::BookInputType, required: true


  def resolve(attributes:)
    book = Book.create!(attributes.to_h)
  end
end
