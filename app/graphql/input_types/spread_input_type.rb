module InputTypes
  class SpreadInputType < InputTypes::Base

    argument :sale_spread, String, required: false
    argument :currency, String, required: false

  end
end
