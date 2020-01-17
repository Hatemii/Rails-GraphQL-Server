
5.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email
   )
end


  5.times do
    Game.create!({
      name: Faker::Game.name,
      genre: Faker::Game.genre,
      platform: Faker::Game.platform
    })
  end


5.times do
  Book.create!({
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre
    })
end
