# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

10.times do
  categories = %w[chinese italian japanese french belgian]

Restaurant.create(
  name: "#{Faker::Restaurant.name}",
  address: "#{Faker::Address.street_address}",
  category: categories.sample,
  phone_number: "#{Faker::PhoneNumber.cell_phone_in_e164}",
)
end
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
