require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all

10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::TvShows::SiliconValley.email,
    age: rand(18...100),
    description: Faker::Food.description
    )
end

10.times do
  city = City.create(
    name: Faker::Address.city, #
    zip_code: Faker::Address.zip_code #
    )
end

20.times do
  gossip = Gossip.create(
    title: Faker::DcComics.title,
    content: Faker::ChuckNorris.fact
    )
end

10.times do
  tag = Tag.create( 
    title: Faker::Game.genre
    )
end

10.times do
  privatemessage = PrivateMessage.create( 
    content: Faker::GreekPhilosophers.quote
    )
end