class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :attributes, InputTypes::BankAccountInputType, required: true
  argument :user_id,ID,required: false

  def resolve(user_id:nil, attributes:)

      if user_id
        x = User.find(user_id).create_bank_account(attributes.to_h)
        x.iban = iban_increase_by_value(attributes.iban.to_i)

      else
        x = BankAccount.create!(attributes.to_h)
        x.iban = iban_increase_by_value(attributes.iban.to_i)

      end
      x.save
      x

    end

  def iban_increase_by_value(iban)
    if iban > 0 && iban <= 10
      iban += 5

    elsif iban > 10 && iban <= 20
      iban += 10

    else
      if iban < 1
        raise GraphQL::ExecutionError, "Iban is invalid"
      else
        iban += 30
      end
    end


  end
end
