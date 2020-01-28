

class Mutations::CreateGames < Mutations::BaseMutation

  argument :attributes, InputTypes::GameInputType, required: true
  argument :id, ID, required: false

  def resolve(id:nil,attributes:)
    if id
      Game.find(id).update!(attributes.to_h)
      Game.find(id)
    else
      Game.create!(attributes.to_h)
    end
  end
end
