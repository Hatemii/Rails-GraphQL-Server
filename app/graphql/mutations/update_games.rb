
class Mutations::UpdateGames < Mutations::BaseMutation


  argument :name,String, required: true
  argument :genre, String, required: true
  argument :platform, String, required: true


    def resolve(name:,genre:,platform:)
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
