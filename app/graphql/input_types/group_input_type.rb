module InputTypes
  class GroupInputType < InputTypes::Base

    argument :purchase_spread, String, required: false
    argument :sale_spread, String, required: false

  end
end
