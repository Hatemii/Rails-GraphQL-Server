module OutputTypes
  class BankAccountType < OutputTypes::BaseObject

    field :id, ID, 'bank account id', null: true
    field :currency, String,null: true
    field :iban, String,null: true
    field :success, Boolean,null: false


  end
end