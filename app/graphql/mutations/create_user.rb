
module Mutations
  class BaseMutation < Mutations::BaseMutation
    argument :name, String, requireD: true
    argument :email, String, requireD: true

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(name:, email:)
      user = User.new(name: name,email: email)

      if (user.save)
        {
          user: user
          errors: []
        }
      else
        {
          user: nil,
          errors: user.errors.full_messages
        }
      end
    end
end
