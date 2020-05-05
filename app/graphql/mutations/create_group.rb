

class Mutations::CreateGroup < Mutations::BaseMutation

  argument :attributes, InputTypes::GroupInputType, required: true
  argument :id, ID, required: false

  def resolve(id:nil,attributes:)
    if id
      Group.find(id).update!(attributes.to_h)
      Group.find(id)
    else
      Group.create!(attributes.to_h)
    end
  end
end
