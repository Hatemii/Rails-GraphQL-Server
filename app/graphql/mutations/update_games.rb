class UpdateGames < Mutations::BaseMutation


  argument :attributes, InputTypes::GameInputType, required: true


    def resolve(attributes:)
      game = Game.find(id)

      if name
        game.name = name
      elsif genre
        game.genre = genre
      else platform
        game.platform = platform
      end

      game.save
      {game: game}
    end

end
