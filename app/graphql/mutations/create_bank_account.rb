class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :attributes, InputTypes::BankAccountInputType, required: true
  argument :id,ID,required: false

  def resolve(id:nil,attributes:)

    if BankAccount.where(currency:attributes[:currency]).where('DATE(created_at) = ?', Date.today).any?
      BankAccount.where(currency:attributes[:currency]).last.update!(attributes.to_h)
    else
      if attributes.iban.to_i < 100
        raise GraphQL::ExecutionError, "You dont have enough balance to complete this"
      else
        BankAccount.create!(attributes.to_h)
      end
    end
    BankAccount.where(currency:attributes[:currency]).last

  end
end
