

class Mutations::CreateSpread < Mutations::BaseMutation

  argument :attributes, InputTypes::SpreadInputType, required: true
  argument :spread_id, ID, required: false
  argument :user_id, ID, required: false
  argument :group_id, ID, required: false

  def resolve(spread_id:nil,attributes:,user_id:nil,group_id:nil)
    if spread_id
      Spread.find(spread_id).update!(attributes.to_h)
      Spread.find(spread_id)
    else
      if user_id
        User.find(user_id).spreads.create!(attributes.to_h)
      elsif group_id
        Group.find(group_id).spreads.create!(attributes.to_h)
      else
        Spread.create!(attributes.to_h)
      end
    end
  end
end
