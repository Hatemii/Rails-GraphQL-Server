

class Mutations::CreateGames < Mutations::BaseMutation

  argument :attributes, InputTypes::GameInputType, required: true


  def resolve(attributes:)
    if Game.find(attributes[:id])
      Game.find(attributes[:id]).update!.(attributes.to_h)
      Game.find(attributes[:id])
    else
      Game.create!(attributes.to_h)
    end
  end
end
