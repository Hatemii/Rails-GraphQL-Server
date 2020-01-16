class Mutations::UpdateUser < Mutations::BaseMutation

      # argument :id, Integer, required: false
      argument :name, String, required: false
      argument :email, String, required: false

      field :user, Types::UserType, null: false
      field :errors, [String], null: false

        def resolve(name:)
          user = User.first
          user.name=name
          user.save
          {user: user}
        end

end
