# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

# Create 5 restaurants
5.times do |i|
  restaurant = Restaurant.create(
    name: "Restaurant #{i + 1}",
    address: "Address #{i + 1}",
    phone_number: "Phone #{i + 1}",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample)

  # Create a review for each restaurant
  Review.create(
    content: "Great food and service!",
    rating: rand(0..5),
    restaurant: restaurant
  )
end

puts "Seed data created successfully!"