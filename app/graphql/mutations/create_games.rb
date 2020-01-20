

class Mutations::CreateGames < Mutations::BaseMutation

  argument :name,String, required: true
  argument :genre, String, required: true
  argument :platform, String, required: true


  def resolve(name:, genre:,platform:)
    game = Game.new(name: name, genre:genre, platform: platform)
    if game.save
      {
        game: game,
        errors: []
      }
    else
      {
        game: nil,
        errors: game.errors.full_messages
      }
    end
  end
end
