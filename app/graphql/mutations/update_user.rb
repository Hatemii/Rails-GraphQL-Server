
class Mutations::UpdateUser < Mutations::BaseMutation

  argument :attributes, InputTypes::UserInputType, required: true

      def resolve(attributes:)
         user = User.find(attributes[:id])
         if attributes[:name]
           user.name = attributes[:name]
         else attributes[:email]
           user.email = attributes[:email]
      end

       user.save!
       user
      end
end
