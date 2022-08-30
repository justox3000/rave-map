puts "Deleting the old Database..."

Attending.destroy_all
Comment.destroy_all
Party.destroy_all
User.destroy_all

puts "Creating 5 random users..."

user1 = User.new(
  username: "testuser",
  email: "test@test.com",
  password: "testtest"
)
user1.save!

user2 = User.new(
  Faker::Internet.user
)

user3 = User.new(
  Faker::Internet.user
)

user4 = User.new(
  Faker::Internet.user
)

user5 = User.new(
  Faker::Internet.user
)

puts "Create 5 random parties..."

party1 = Party.new(
  title: Faker::Movies::Tron.tagline,
  music_genre: "House",
  location: "Gewölbe",
  description: Faker::Lorem.sentence(word_count: 7),
  date: Faker::Date.forward(days: 23),
  starttime: "23:00"
)
party1.user = user1
party1.save!

party2 = Party.new(
  title: Faker::Movies::Tron.tagline,
  music_genre: "Techno",
  location: "Helios 37",
  description: Faker::Lorem.sentence(word_count: 7),
  date: Faker::Date.forward(days: 23),
  starttime: "22:30"
)
party2.user = user1
party2.save!

party3 = Party.new(
  title: Faker::Movies::Tron.tagline,
  music_genre: "Psytrance",
  location: "Artheater",
  description: Faker::Lorem.sentence(word_count: 7),
  date: Faker::Date.forward(days: 23),
  starttime: "23:30"
)
party3.user = user2
party3.save!

party4 = Party.new(
  title: Faker::Movies::Tron.tagline,
  music_genre: "Techno",
  location: "Artheater",
  description: Faker::Lorem.sentence(word_count: 7),
  date: Faker::Date.forward(days: 23),
  starttime: "23:30"
)
party4.user = user1
party4.save!

party5 = Party.new(
  title: Faker::Movies::Tron.tagline,
  music_genre: "Techno",
  location: "Odonien",
  description: Faker::Lorem.sentence(word_count: 7),
  date: Faker::Date.forward(days: 23),
  starttime: "22:30"
)
party5.user = user4
party5.save!

puts "Created 5 users and 5 parties..."
puts "username: testuser"
puts "email: test@test.com"
puts "password: testtest"
