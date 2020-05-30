class Mutations::CreateBankAccount < Mutations::BaseMutation

  argument :bank_account_list, [GraphQL::Types::JSON], required: true
  argument :user_id, ID, required: true

  def resolve(bank_account_list: bank_account_list, user_id:)
    user = User.find(user_id)
    bank_account_list.each do |bank_account|
      user.bank_accounts.build(
        currency: bank_account["currency"],
        iban: bank_account["iban"]
      )
      user.save
    end
    User.find(user_id).bank_accounts.last


  rescue ActiveRecord::RecordInvalid => e
    GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")

  end

end


# it returns only the last record .. not last four records
# { currency: "EUR", iban: "223222" }
# { currency: "USD", iban: "7571488" }
# { currency: "CHF", iban: "9122" }
# { currency: "GBP", iban: "7571488" }   <<-- bank_accounts.last
#
# bank_accounts.all - not working! need to fix this!


# GRAPHQL MUTATION
# mutation createBankAccounts {
#   createBankAccounts(
#     userId: 1
#     bankAccountList: [
#       { currency: "EUR", iban: "223222" }
#       { currency: "USD", iban: "7571488" }
#       { currency: "CHF", iban: "9122" }
#       { currency: "GBP", iban: "7571488" }
#     ]
#     ) {
#       currency
#       iban
#       id
#     }
#   }
#
