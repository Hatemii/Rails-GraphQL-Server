

class Mutations::CreateBook < Mutations::BaseMutation

  argument :attributes, InputTypes::BookInputType, required: true


  def resolve(attributes:)

    if Book.find(attributes[:id])
      Book.find(attributes[:id]).update!(attributes.to_h)
      Book.find(attributes[:id])
    else
        Book.create!(attributes.to_h)
      end
    end
  end
