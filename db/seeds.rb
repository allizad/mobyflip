# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding the database...'

WHALERS = 20

if Whaler.count < WHALERS
  n = WHALERS - Whaler.count
  puts "Creating #{n} Whalers..."
  n.times do
    Whaler.create(
      name: Faker::Name.name,
      description: Faker::Quote.famous_last_words,
      strength: Faker::Number.number(2),
      skill: Faker::Number.number(2),
      image_url: Faker::Fillmurray.image,
      email: Faker::Internet.email
    )
  end
end
