
class Mutations::UpdateBook < Mutations::BaseMutation

  argument :attributes, InputTypes::BookInputType, required: true

  def resolve(attributes:)
    book = Book.find(attributes[:id])
    if attributes[:title]
      book.title = attributes[:title]
    elsif attributes[:genre]
      game.genre = attributes[:genre]
    else attributes[:author]
      book.author = attributes[:author]
    end

    book.save!
    book
  end

end
