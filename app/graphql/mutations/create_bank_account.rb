class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :attributes, InputTypes::BankAccountInputType, required: true
  argument :bank_id,ID,required:false

  def resolve(attributes:attributes,bank_id:nil)

    if bank_id
      bank = BankAccount.find(bank_id)
      bank_currency = bank.currency

      find_true = BankAccount.where(currency:attributes.currency).where(primary:true).any?

      if find_true == true && attributes.primary == true
        if bank.primary == true
          raise GraphQL::ExecutionError, "primary is already true"
        else

          current_primary = BankAccount.where(currency:bank_currency).where(primary:true)
          current_primary.update(primary:false)
        end
      end

      bank.update!(attributes.to_h)
      bank.save!
      bank

    else
      find_true = BankAccount.where(currency:attributes.currency).where(primary:true).any?

      if find_true == true && attributes.primary == true
        current_primary = BankAccount.where(currency:attributes.currency).where(primary:true)
        current_primary.update(primary:false)

        BankAccount.create!(attributes.to_h)

      else
        BankAccount.create!(attributes.to_h)

      end
    end
  end
end
