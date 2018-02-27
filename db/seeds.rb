# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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

# amy = User.create!(name: "Amy", photo: "string", address:"blabla", email: "amy@email.com", password: "123123")
item = Item.new({user_id: 1, size: 8, price: 10.0, category:"cocktail dress", description: "pretty party dress"})
url = 'https://images.unsplash.com/photo-1442810030476-6d83b45a1094?ixlib=rb-0.3.5&s=07dd521ed8eef8af35c3ecae598208ce&auto=format&fit=crop&w=752&q=80'
item.remote_photo_url = url
item.save!
# User.create!({name: "Mary", photo: "string", address:"blabla"})
# User.create!({name: "Lucy", photo: "string", address:"blabla"})

# Item.create!({size: 10, price: 20.0, remote_photo_url:"https://images.unsplash.com/photo-1442810030476-6d83b45a1094?ixlib=rb-0.3.5&s=07dd521ed8eef8af35c3ecae598208ce&auto=format&fit=crop&w=752&q=80", category:"prom dress", description: "beautiful prom dress"})
# Item.create!({size: 10, price: 10.0, photo:"url('https://images.unsplash.com/photo-1516527659191-7e02047a7f0e?ixlib=rb-0.3.5&s=c125e67fa50714e7f5cae218b52f2c66&auto=format&fit=crop&w=400&q=80')", category:"simple dress", description: "simple elegant dress"})
