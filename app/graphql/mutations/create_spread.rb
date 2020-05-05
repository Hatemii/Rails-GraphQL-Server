

class Mutations::CreateSpread < Mutations::BaseMutation

  argument :attributes, InputTypes::SpreadInputType, required: true
  argument :id, ID, required: false

  def resolve(id:nil,attributes:)
    if id
      Spread.find(id).update!(attributes.to_h)
      Spread.find(id)
    else
      Spread.create!(attributes.to_h)
    end
  end
end
