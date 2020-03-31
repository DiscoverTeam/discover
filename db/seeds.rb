# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create a main sample place.
Place.create!(name:  "Example Place",
              address: "example address",
              current_capacity: 0,
              maximum_capacity: 400)

# Generate a bunch of additional places.
99.times do |n|
  name  = Faker::Name.name
  address = "example address #{n+1}"
  Place.create!(name:  name,
                address: address,
                current_capacity: 0,
                maximum_capacity: 400)
end
