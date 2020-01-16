class Mutations::CreateGames < Mutations::BaseMutation

  argument :name, String, required: true
  argument :genre, String, required: true


  field :game, Types::GameType, null: false
  field :errors, [String], null: false

  def resolve(name:, genre:)
    game = Game.new(name: name, genre:genre)
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
