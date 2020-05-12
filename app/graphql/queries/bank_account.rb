module Queries
  class BankAccount < Queries::BaseQuery

     argument :id, ID, required: false
     type [OutputTypes::BankAccountType], null: false


    def resolve(id: nil)
      if id
        ::BankAccount.where(id: id)
      else
        ::BankAccount.all
      end
    end

  end
end
