module InputTypes
  class UserInputType < InputTypes::Base

    argument :name,description: "Game name", String, required: true
    argument :genre,description: "Game genre", String, required: true
    argument :platform,description: "Game platform", String, required: true


  end
end
