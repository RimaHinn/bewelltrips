# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting categories"
Category.destroy_all

puts "Creating categories"
Category.create(name: "Hiking")
Category.create(name: "Yoga")
Category.create(name: "Nutrition")
Category.create(name: "Medical Spa")
Category.create(name: "Spa")
Category.create(name: "Fitness")
puts "Categories created"
