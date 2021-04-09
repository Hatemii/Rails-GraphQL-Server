module OutputTypes
  class BankAccountType < OutputTypes::BaseObject

    field :id, ID,null: true
    field :currency, String,null: true
    field :iban, String,null: true
    field :bank_name, String,null: true
    field :primary, Boolean,null: true
    field :value, Integer,null: true

  end
end
