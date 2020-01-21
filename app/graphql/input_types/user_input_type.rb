module InputTypes
  class UserInputType < InputTypes::Base

    argument :id, ID,description: "User ID", required: true
    argument :name, String,description: "User name", required: false
    argument :email, String,description: "User email", required: true

  end
end
