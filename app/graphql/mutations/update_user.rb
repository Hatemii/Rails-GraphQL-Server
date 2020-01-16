module Mutations
  module Books
    class UpdateUser < ::Mutations::BaseMutation

      argument :id, Integer, required: true
      argument :name, String, required: false
      argument :email, String, required: false

      

    end
  end
end
