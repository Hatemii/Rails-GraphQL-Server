
class Mutations::DeleteUser < Mutations::BaseMutation

  argument :attributes, InputTypes::UserInputType, required: true


  def resolve(attributes:)

     user = User.find(attributes[:id])

     user.destroy
     user.save
     user

  end
end
