

class Mutations::CreateSpread < Mutations::BaseMutation

  argument :attributes, InputTypes::SpreadInputType, required: true
  argument :spread_id, ID, required: false
  argument :user_id, ID, required: false
  argument :group_id, ID, required: false

  def resolve(spread_id: nil, attributes:attributes, user_id:nil, group_id:nil)

    if spread_id
      Spread.find(spread_id).update!(attributes.to_h)
      Spread.find(spread_id)

    else
      if user_id
        spread = User.find(user_id).spreads.where(currency:attributes.currency).first_or_initialize

      elsif group_id
        spread = Group.find(group_id).spreads.where(currency:attributes.currency).first_or_initialize

      else
        Spread.create!(attributes.to_h)
      end
    end

    spread.update!(attributes.to_h)
    spread.save
    spread

  end
end


# DESCRIPTION -> first_or_initialize
# Selects the first record within a relation if it exists,
# otherwise creates a new record with the optional attributes.
