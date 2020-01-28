

class Mutations::CreateUser < Mutations::BaseMutation

  argument :attributes, InputTypes::UserInputType, required: true
  argument :id, ID, required: false

  def resolve(id:nil,attributes:)
    if id
      User.find(id).update!(attributes.to_h)
      User.find(id)
    else
      User.create!(attributes.to_h)
    end
  end
end
