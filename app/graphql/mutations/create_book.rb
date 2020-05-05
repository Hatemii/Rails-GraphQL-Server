

class Mutations::CreateBook < Mutations::BaseMutation

  argument :attributes, InputTypes::BookInputType, required: true
  argument :id,ID,required: false

  def resolve(id:nil,attributes:)
    if id
      Book.find(id).update!(attributes.to_h)
      Book.find(id)
    else
      User.first.books.create!(attributes.to_h)
    end



  end
end
