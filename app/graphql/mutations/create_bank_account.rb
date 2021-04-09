class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :attributes, InputTypes::BankAccountInputType, required: false
  argument :bank_id, ID, required: false

  def resolve(attributes: )
    
    getTotal = Services::GetTotal.get_total(attributes.value)

    bankAccount = BankAccount.create(attributes.to_h)
    bankAccount.value = getTotal
    bankAccount.save
    bankAccount

  end
end
