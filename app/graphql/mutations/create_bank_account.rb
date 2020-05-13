class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :attributes, InputTypes::BankAccountInputType, required: true
  argument :id,ID,required: false


  def resolve(attributes:)

    iban_values = BankAccount.where(currency:attributes[:currency]).pluck(:iban)

    iban_values.each do |x|
      if x == attributes[:iban]
        raise GraphQL::ExecutionError, "iban already exist in array"
      else
        BankAccount.create!(attributes.to_h)
      end
    end
      BankAccount.where(currency:attributes[:currency]).last

  end
end
