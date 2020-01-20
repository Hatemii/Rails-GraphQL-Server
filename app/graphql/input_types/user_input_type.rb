module InputTypes
  class UserInputType < InputTypes::Base

    argument :id, Integer,description: "User ID", required: false
    argument :name, String,description: "User name",required: false
    argument :email, String,description: "User email",required: false

  end
end
