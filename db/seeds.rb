# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:

# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

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

puts "...4 categories created, creating 21 nft..."

# KITCHEN

nft = Nft.create!(
  title: "Pan",
  description: "Treat your friends with virtual delicacies, pixels never tasted so good!",
  price: 150,
  category_id: 1,
  user_id: 1
)

nft.photo.attach(io: File.open("db/seedpics/pan.jpg"), filename: "pan.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Stove",
  description: "Modern kitchen stoves, restaurant grade for the demanding meta-chefs",
  price: 9000,
  category_id: 1,
  user_id: 2
)

nft.photo.attach(io: File.open("db/seedpics/stove.jpg"), filename: "stove.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Oven",
  description: "The only cookies you will consent to",
  price: 2000,
  category_id: 1,
  user_id: 3
)

nft.photo.attach(io: File.open("db/seedpics/oven.jpg"), filename: "oven.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Clock",
  description: "Minimalist look buty does the job, the bootstrap of clocks",
  price: 3200,
  category_id: 1,
  user_id: 1
)

nft.photo.attach(io: File.open("db/seedpics/clock2.jpg"), filename: "clock2.jpg", content_type: "image/jpeg")

# ARTS&CRAFTS

nft = Nft.create!(
  title: "Statue",
  description: "A group of three classic figures, a unique piece to decorate your virtual (walled) garden",
  price: 6000,
  category_id: 4,
  user_id: 1
)

nft.photo.attach(io: File.open("db/seedpics/statues.jpg"), filename: "statues.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Golden Apple",
  description: "Think different",
  price: 8500,
  category_id: 4,
  user_id: 2
)

nft.photo.attach(io: File.open("db/seedpics/apple.jpg"), filename: "apple.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Abstract Painting",
  description: "No screenshots allowed, this is real art and you can own it!",
  price: 6000,
  category_id: 4,
  user_id: 3
)


nft.photo.attach(io: File.open("db/seedpics/modernart.jpg"), filename: "modernart.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Red Velvet Chair",
  description: "You might think this is a chair but it's actually a work of art, get it now and show off!",
  price: 8600,
  category_id: 4,
  user_id: 3
)

nft.photo.attach(io: File.open("db/seedpics/chair3.jpg"), filename: "chair3.jpg", content_type: "image/jpeg")

# BEDROOM

nft = Nft.create!(
  title: "Armchair",
  description: "High qulity and comfortable, great for early morning Zoom calls",
  price: 1200,
  category_id: 2,
  user_id: 1
)

nft.photo.attach(io: File.open("db/seedpics/armchair.jpg"), filename: "armchair.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Yellow Chair",
  description: "Great look and low price, you won't fond a cheaper virtual meta-chair around",
  price: 600,
  category_id: 2,
  user_id: 2
)

nft.photo.attach(io: File.open("db/seedpics/chair2.jpg"), filename: "chair2.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Drawer",
  description: "The best place to store those nft sneakers you have been binge-shopping",
  price: 3000,
  category_id: 2,
  user_id: 3
)

nft.photo.attach(io: File.open("db/seedpics/drawer.jpg"), filename: "drawer.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Sofa",
  description: "So-fa so-good",
  price: 7000,
  category_id: 2,
  user_id: 1
)

nft.photo.attach(io: File.open("db/seedpics/sofa.jpg"), filename: "sofa.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Old School Lamp",
  description: "A small but powerful lamp, won't let you down if the server crashes",
  price: 600,
  category_id: 2,
  user_id: 2
)

nft.photo.attach(io: File.open("db/seedpics/lamp1.jpg"), filename: "lamp1.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Alarm Clock",
  description: "Wake up and smell the meta-coffee",
  price: 300,
  category_id: 2,
  user_id: 2
)

nft.photo.attach(io: File.open("db/seedpics/clock3.jpg"), filename: "clock3.jpg", content_type: "image/jpeg")

# DESK

nft = Nft.create!(
  title: "Cactus",
  description: "This will basically take care of itself and will make your desk greener, no-brainer!",
  price: 80,
  category_id: 3,
  user_id: 1
)

nft.photo.attach(io: File.open("db/seedpics/cactus.jpg"), filename: "cactus.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Virtual Pet",
  description: "A really friendly cat, just make sure to hide your mouse at night",
  price: 1000,
  category_id: 3,
  user_id: 2
)

nft.photo.attach(io: File.open("db/seedpics/pet.jpeg"), filename: "pet.jpeg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Lamp",
  description: "Minimalist yet powerful, this white lamp can brightn up any room",
  price: 1100,
  category_id: 3,
  user_id: 3
)

nft.photo.attach(io: File.open("db/seedpics/lamp.jpg"), filename: "lamp.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "White Clock",
  description: "Time flies when you are having fun. Never miss a virtual rendez-vous with this beautiful clock",
  price: 800,
  category_id: 3,
  user_id: 1
)

nft.photo.attach(io: File.open("db/seedpics/clock.jpg"), filename: "clock.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Fern",
  description: "The best way to style up a desk, just remember to water it once a week",
  price: 90,
  category_id: 3,
  user_id: 2
)

nft.photo.attach(io: File.open("db/seedpics/fern.jpg"), filename: "fern.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Yellow Chair",
  description: "Mid-century is really in right now, can you resist the trend? We don't think so",
  price: 3200,
  category_id: 3,
  user_id: 1
)

nft.photo.attach(io: File.open("db/seedpics/chair.jpg"), filename: "chair.jpg", content_type: "image/jpeg")

nft = Nft.create!(
  title: "Lamps",
  description: "Why getting one lamp when you can get many? Click now!",
  price: 750,
  category_id: 3,
  user_id: 2
)

nft.photo.attach(io: File.open("db/seedpics/lamps.jpg"), filename: "lamps.jpg", content_type: "image/jpeg")

puts "...db seeded, now you can start creating your baskets!"
