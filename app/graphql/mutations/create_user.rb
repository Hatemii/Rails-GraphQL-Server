

class Mutations::CreateUser < Mutations::BaseMutation

  argument :attributes, InputTypes::UserInputType, required: true


  def resolve(attributes:)
    if User.find(attributes[:id])
      User.find(attributes[:id]).update!(attributes.to_h)
      User.find(attributes[:id])
    else
      User.create!(attributes.to_h)
    end
  end
end
