class Mutations::UpdateGames < Mutations::BaseMutation

  argument :name, String, required: false
  argument :genre, String, required: false
  argument :platform, String, required: false

  field :game, Types::GameType, null: false
  field :errors, [String], null: false

  def resolve(name:,genre:,platform:)
    game = Game.first
    game.name = name
    game.genre = genre
    game.platform = platform

    game.save
    {game: game}

  end
end
