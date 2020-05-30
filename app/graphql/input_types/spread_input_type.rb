module InputTypes
  class SpreadInputType < InputTypes::Base

    argument :currency, String, required: false
    argument :sale_spread, String, required: false

  end
end
