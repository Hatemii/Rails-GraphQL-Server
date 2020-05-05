module Queries
  class Group < Queries::BaseQuery

     argument :id, ID, required: false
     type [OutputTypes::GroupType], null: false


    def resolve(id: nil)
      if id
        ::Group.where(id: id)
      else
        ::Group.all
      end
    end

  end
end