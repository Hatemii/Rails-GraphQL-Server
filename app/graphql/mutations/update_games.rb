class Mutations::UpdateGames < Mutations::BaseMutation


  argument :id, Integer, required: false
  argument :name, String, required: false
  argument :genre, String, required: false
  argument :platform, String, required: false

  field :game, Types::GameType, null: false
  field :errors, [String], null: false

    def resolve(id:,name:)
      game = Game.find_by!(id: id)
      game.name=name
      game.save
      {game: game}
    end

end
