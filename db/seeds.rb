# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "destroying all..."
Restaurant.destroy_all
bristol = {name: "Epicure", address: "36 rue de Rome, 75017 Paris", phone_number: "312-75-68", category: "french"}
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "423-567-654-23"}
gilakil = {name: "Golakil", address: "23 rue de Maison, 75010 Paris", phone_number: "563-345-278-23", category: "french"}
laila =  {name: "LaiLa", address: "23 rue de la Liberté, Marseille", category: "chinese", phone_number: "06-45-36-76-23"}

[dishoom, pizza_east, bristol, gilakil, laila].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
