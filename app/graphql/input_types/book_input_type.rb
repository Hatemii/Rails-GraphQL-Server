module InputTypes
  class BookInputType < InputTypes::Base

    argument :id, Integer,description: "Book ID", required: true
    argument :author, String,description: "Book Author",required: false
    argument :title, String,description: "Book Title",required: false
    argument :genre, String,description: "Book Genre",required: false


  end
end
