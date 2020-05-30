class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :bank_account_object, [GraphQL::Types::JSON], required: false
  argument :attributes, InputTypes::BankAccountInputType, required: false
  argument :user_id, ID, required: false
  argument :bank_id, ID, required: false


  def resolve(bank_account_object: bank_account_object,
    attributes: attributes, user_id: user_id, bank_id: bank_id)

    if user_id
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

    else

      if bank_id
        BankAccount.find(bank_id).update!(attributes.to_h)
        BankAccount.find(bank_id)

      else
        BankAccount.create!(attributes.to_h)

      end

    end
  end
end
