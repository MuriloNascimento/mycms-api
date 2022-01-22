# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create!(name: "Test 1", login: "teste1", password: "teste123")
user2 = User.create!(name: "Test 2", login: "teste2", password: "teste123")
user3 = User.create!(name: "Test 3", login: "teste3", password: "teste123")