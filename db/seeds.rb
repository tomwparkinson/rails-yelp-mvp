# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
dal_fiorentino =  {name: "Dal Fiorentino", address: "74 Hoxton St, London N1 6LP", category: "italian", phone_number: "07783437620"}
bbb =  {name: "Bun Bun Bun", address: "134B Kingsland Road, London, E2 8DY", category: "chinese"}
schnitzel_heaven = {name: "Schnitzel Heaven", address: "57 Pitfield St, London, N1 6BU", category: "belgian", phone_number: "02072090379"}
gloria =  {name: "Gloria", address: "54-56 Great Eastern St, London EC2A 3QR", category: "italian", phone_number: "02045784370"}

[dishoom, pizza_east, dal_fiorentino, bbb, schnitzel_heaven, gloria].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
