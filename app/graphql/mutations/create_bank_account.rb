class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :attributes, InputTypes::BankAccountInputType, required: true
  argument :id,ID,required: false

  def resolve(id:nil,attributes:)
    if id
      BankAccount.find(id).update!(attributes.to_h)
      BankAccount.find(id)
    else
      if attributes.iban.to_i < 100
        raise GraphQL::ExecutionError, "You dont have enough balance to complete this"
      else
        BankAccount.create!(attributes.to_h)
      end
    end
  end
end
