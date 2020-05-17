class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :attributes, InputTypes::BankAccountInputType, required: true
  argument :user_id,ID,required: false


  def resolve(user_id:nil, attributes:)
    if user_id
      User.find(user_id).create_bank_account!(attributes.to_h)
    else
      BankAccount.create!(attributes.to_h)
    end
  end
end
