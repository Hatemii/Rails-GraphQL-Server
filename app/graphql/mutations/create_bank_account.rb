class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :attributes, InputTypes::BankAccountInputType, required: true
  argument :id, ID, required: false

  def resolve(id:nil,attributes:)
    if id
      BankAccount.find(id).update!(attributes.to_h)
      BankAccount.find(id)
    else
      BankAccount.create!(attributes.to_h)
    end
  end
end
