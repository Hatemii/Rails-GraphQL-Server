


class Mutations::DeleteGames < Mutations::BaseMutation

  argument :attributes, InputTypes::GameInputType, required: true


  def resolve(attributes:)

     game = Game.find(attributes[:id])

     game.destroy
     game.save
     game

  end
end
