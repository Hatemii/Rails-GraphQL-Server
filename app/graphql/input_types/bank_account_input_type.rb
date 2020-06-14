module InputTypes
  class BankAccountInputType < InputTypes::Base

    argument :currency, String, required: false
    argument :iban, String, required: false
    argument :bank_name, String, required: false
    argument :primary, Boolean, required: false

  end
end
