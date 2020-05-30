module OutputTypes
  class BankAccountType < OutputTypes::BaseObject


    field :id, ID, 'bank account id', null: true
    field :currency, String,null: false
    field :iban, String,null: false
  
  end
end
