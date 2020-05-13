module OutputTypes
  class BankAccountType < OutputTypes::BaseObject

    field :id, ID,null: false
    field :currency, String,null: true
    field :iban, String,null: true
  
  end
end
