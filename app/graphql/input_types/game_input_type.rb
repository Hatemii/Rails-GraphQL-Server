module InputTypes
  class UserInputType < InputTypes::Base

    argument :id, Integer,description: "Game ID", required: false
    argument :name,description: "Game name", String, required: false
    argument :genre,description: "Game genre", String, required: false
    argument :platform,description: "Game platform", String, required: false


  end
end
