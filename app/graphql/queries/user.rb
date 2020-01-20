module Queries
  class User < Queries::BaseQuery

     argument :id, ID, required: false
     type [OutputTypes::UserType], null: false


    def resolve(id: nil)
      if id
        ::User.where(id: id)
      else
        ::User.all
      end
    end

  end
end
