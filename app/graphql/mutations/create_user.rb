

class Mutations::CreateUser < Mutations::BaseMutation

  argument :attributes, InputTypes::UserInputType, required: true


  def resolve(attributes:)
    user = User.create!(attributes.to_h)
  end
end
