module Queries
  class BankAccount < Queries::BaseQuery

     type [OutputTypes::BankAccountType], null: true
     argument :user_id, ID, required: false


    def resolve(user_id: nil)
      if user_id
        ::BankAccount.where(user_id: user_id).order("id DESC")
      else
        ::BankAccount.where(user_id: nil).order("id DESC")
      end
    end

  end
end
