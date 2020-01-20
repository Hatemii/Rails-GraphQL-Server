class UpdateUser < Mutations::BaseMutation

      argument :attributes, InputTypes::UserInputType, required: true

      def resolve(attributes:)
         user = User.find(id)
         if name
           user.name = name
         else title
           user.email = email
         end

       user.save
       {user: user}
      end
    end
