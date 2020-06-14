class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :attributes, InputTypes::BankAccountInputType, required: false
  argument :bank_id,ID,required:false

  def resolve(attributes:attributes,bank_id:nil)

    if bank_id
      BankAccount.find(bank_id).update!(attributes.to_h)
      BankAccount.find(bank_id)

    else

      if_primary = BankAccount.where(currency:attributes.currency).where(primary:true).any?

      if if_primary == true && attributes.primary == true
        current_primary = BankAccount.where(currency:attributes.currency).where(primary:true)
        current_primary.update(primary:false)

        BankAccount.create!(attributes.to_h)

      else
        BankAccount.create!(attributes.to_h)

      end
    end
  end
end
