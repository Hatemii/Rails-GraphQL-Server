
class Mutations::UpdateGames < Mutations::BaseMutation

  argument :attributes, InputTypes::GameInputType, required: true

  def resolve(attributes:)
    game = Game.find(attributes[:id])

    if attributes[:name]
      game.name = attributes[:name]
    elsif attributes[:genre]
      game.genre = attributes[:genre]
    else attributes[:platform]
      game.platform = attributes[:platform]
    end

    game.save!
    game

  end
end
