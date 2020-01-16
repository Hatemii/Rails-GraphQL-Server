class Mutations::DeleteGames < Mutations::BaseMutation

  argument :id, Integer, required: false
  argument :name, String, required: false
  argument :genre, String, required: false
  argument :platform, String, required: false

  field :game, Types::GameType, null: false
  field :errors, [String], null: false

    def resolve(id:)
      game = Game.find_by!(id: id)
      game.destroy
      {game: game}
    end
end
