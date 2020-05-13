module Queries
  class BankAccount < Queries::BaseQuery

     type [OutputTypes::BankAccountType], null: false
     argument :user_id, ID, required: false


    def resolve(user_id: nil)
      if user_id
        ::User.find(user_id).bank_accounts
      else
        ::BankAccount.where(user_id:nil)
      end
    end

  end
end
