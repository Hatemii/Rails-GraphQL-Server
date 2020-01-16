
5.times do
  user = User.create!(name: Faker::Name.name, email: Faker::Internet.email)
  5.times do
    user.posts.create!(title: Faker::Lorem.sentence(word_count:3),
    body: Faker::Lorem::paragraph(sentence_count: 3))
  end


  10.times do
    Game.create!({
      name: Faker::Game.name,
      genre: Faker::Game.genre,
      platform: Faker::Game.platform
    })
  end
end
