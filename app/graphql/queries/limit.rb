module Queries
  class Limit < Queries::BaseQuery

    argument :id, ID, required: false
    type [OutputTypes::LimitType], null: false


    def resolve(id: nil)
      ::Limit.all.order("id ASC")
    end
  end
end
  
