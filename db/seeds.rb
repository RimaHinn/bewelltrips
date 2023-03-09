# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "destroy users"
User.destroy_all
puts "Create test user"
User.create(email: "test1@gmail.com", password: "123456")

puts "Deleting categories"
TripCategory.destroy_all

puts "Creating categories"
TripCategory.create(name: "Hiking")
TripCategory.create(name: "Yoga")
TripCategory.create(name: "Nutrition")
TripCategory.create(name: "Medical Spa")
TripCategory.create(name: "Spa")
TripCategory.create(name: "Surfing")
puts "Categories created"
