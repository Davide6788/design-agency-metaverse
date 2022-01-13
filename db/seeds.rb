# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Creating 4 users..."

User.create!(email: 'hannah@test.com', password: 'hannah')
User.create!(email: 'victor@test.com', password: 'victor')
User.create!(email: 'matthew@test.com', password: 'matthew')
User.create!(email: 'davide@test.com', password: 'davide')

puts "...4 users created, creating 4 categories..."

Category.create!(category_name: "kitchen")
Category.create!(category_name: "bedroom")
Category.create!(category_name: "desk")
Category.create!(category_name: "arts&crafts")

puts "...4 categories created, creating 20 nfts..."

20.times do
  nft = Nft.create!(title: Faker::House.furniture, description: Faker::Quotes::Shakespeare.king_richard_iii_quote, price: Faker::Number.between(from: 1, to: 100), category_id: Faker::Number.between(from: 1, to: 4), user_id: Faker::Number.between(from: 1, to: 4))
  puts nft.title
end

puts "...db seeded, now you can start creating your baskets!"
