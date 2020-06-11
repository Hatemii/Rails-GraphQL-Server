class Mutations::CreateLimit < Mutations::BaseMutation

  argument :attributes, InputTypes::LimitInputType, required: true
  argument :limit_id, ID, required: false

  def resolve(limit_id:nil,attributes:)

    if limit_id
      Limit.find(limit_id).update!(attributes.to_h)
      Limit.find(limit_id)

    else
      Limit.create!(attributes.to_h)

    end
  end
end
