module InputTypes
  class BankAccountInputType < InputTypes::Base

    argument :currency, String, required: false
    argument :iban, String, required: false
  

  end
end
