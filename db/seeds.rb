# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'open-uri'

url = "https://source.unsplash.com/900x900/?dress"

9.times do
  User.create!(name: Faker::Name.name, email: Faker::Internet.email(:name), address: Faker::Address.city,  password: "password")
end

9.times do
  Item.create!(description: "nice",
  price: 4,
  size: "big",

  user_id: (1..9).to_a.sample)
end
