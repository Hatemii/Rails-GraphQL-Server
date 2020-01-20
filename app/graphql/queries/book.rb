module Queries
  class Book < Queries::BaseQuery

     argument :id, ID, required: false
     type [OutputTypes::BookType], null: false

    def resolve(id: nil)
      if id
        ::Book.where(id: id)
      else
        ::Book.all
      end
    end


  end
end
