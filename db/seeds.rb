# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Ingredient.destroy_all

puts "Creating ingredients..."
lemon = { name: "lemon" }
ice =  { name: "ice" }
mint_leaves = { name: "mint_leaves" }
tequila =  { name: "tequila" }

[ lemon, ice, mint_leaves, tequila].each do |attributes|
  ingredient = Ingredient.create!(attributes)
  puts "Created #{ingredient.name}"
end
puts "Finished!"
