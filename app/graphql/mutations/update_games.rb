
class Mutations::UpdateGames < Mutations::BaseMutation


  argument :id, Integer, required: true
  argument :name,String, required: false
  argument :genre, String, required: false
  argument :platform, String, required: false


    def resolve(id:,name:nil,genre:nil,platform:nil)
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
