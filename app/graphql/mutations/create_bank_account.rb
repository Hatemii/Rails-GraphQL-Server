class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :bank_account_object, [GraphQL::Types::JSON], required: true
  argument :user_id, ID, required: true


  def resolve(bank_account_object: bank_account_object, user_id:user_id)
    user = User.find(user_id)
    bank_account_object.each do |bank_account|
      user.bank_accounts.build(
        currency: bank_account["currency"],
        iban: bank_account["iban"]
      )
      user.save
    end

    if user.save!
      {success:true}
    end

  end
end
