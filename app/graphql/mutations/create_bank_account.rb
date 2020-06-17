class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :attributes, InputTypes::BankAccountInputType, required: false
  argument :bank_id, ID, required: false

  def resolve(attributes: attributes, bank_id: bank_id)
    if bank_id
      bank = BankAccount.find(bank_id)
      bank_currency = bank.currency

      find_true = BankAccount.where(currency:attributes.currency, primary:true).where.not(id: bank_id).any?

      if find_true == true && attributes.primary == true
        current_primary = BankAccount.where(currency:bank_currency, primary:true)
        current_primary.update(primary:false)

      end

      bank.update!(attributes.to_h)
      bank.save!
      bank

    else
      find_true = BankAccount.where(currency:attributes.currency, primary:true).any?

      if find_true == true && attributes.primary == true
        current_primary = BankAccount.where(currency:attributes.currency, primary:true)
        current_primary.update(primary:false)

        BankAccount.create!(attributes.to_h)

      else
        if BankAccount.where(currency:attributes.currency).empty?
          BankAccount.create!(attributes.to_h).update!(primary:true)

        else
          BankAccount.create!(attributes.to_h)

        end

        BankAccount.where(currency:attributes.currency).last

      end
    end
  end
end
