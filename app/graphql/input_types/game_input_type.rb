module InputTypes
  class GameInputType < InputTypes::Base

    argument :name, String,description: "Game name", required: false
    argument :genre, String,description: "Game genre", required: false
    argument :platform, String,description: "Game platform", required: false

  end
end
