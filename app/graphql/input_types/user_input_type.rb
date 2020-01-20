module InputTypes
  class UserInputType < InputTypes::Base

    argument :name, String,description: "User name",required: false
    argument :email, String,description: "User email",required: false


  end
end
