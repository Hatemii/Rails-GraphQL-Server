

class Mutations::CreateGames < Mutations::BaseMutation

  argument :attributes, InputTypes::GameInputType, required: true


  def resolve(attributes:)
    game = Game.create!(attributes.to_h)
  end
end
