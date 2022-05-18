# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
puro = { name: "Puro", address: "Rigitrasse 6", category: "japanese" }
ramiro = { name: "Ramiro", address: "Avenida 7", category: "italian" }
villa = { name: "Villa", address: "7Josefstrasse 202", category: "french" }
tasca = { name: "Tasca", address: "Rua mia 7", category: "belgian" }

restaurants = [dishoom, puro, ramiro, tasca, villa]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "#{restaurant.name} has been created"
end

puts "Finished"
