class Mutations::DeleteUser < Mutations::BaseMutation

  argument :id, Integer, required: false
  argument :name, String, required: false
  argument :email, String, required: false

  field :user, Types::UserType, null: false
  field :errors, [String], null: false

  def resolve(id:)
    user = User.find_by!(id: id)
    user.destroy
    {user: user}
  end
end
