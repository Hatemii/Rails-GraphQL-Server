class Mutations::CreateLimit < Mutations::BaseMutation

  argument :limit_id, ID, required: false
  argument :user_id, ID, required: false
  argument :limit, String, required: true


  def resolve(limit_id:nil, user_id:nil, limit:)

    if limit_id
      a_limit = Limit.find(limit_id)

      if a_limit.update_column(:limit, limit) && User.where(limit_exception: nil).update_all(trading_limit: limit)
        {success:true}
      else
        {success:false}
      end


    elsif user_id
      user = User.find(user_id)

      if user.update_columns(trading_limit: limit, limit_exception: true)
        {success:true}
      else
        {success:false}
      end


    else
      Limit.create!(attributes.to_h)

    end
  end
end
