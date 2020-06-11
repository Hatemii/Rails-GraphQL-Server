class Mutations::CreateLimit < Mutations::BaseMutation

  argument :limit_id, ID, required: false
  argument :user_id, ID, required: false
  argument :limit, String, required: true


  def resolve(limit_id:nil, user_id:nil, limit:)

    if limit_id
      a_limit = Limit.find(limit_id)

      if a_limit.update_column(:limit, limit)
        {success:true}
      else
        {success:false}
      end

    else
      Limit.create!(attributes.to_h)

    end
  end
end
