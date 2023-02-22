# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'destroying all'
Restaurant.destroy_all

macdo = Restaurant.new(name: 'Macdo', address: '25 Rue JJ', category: 'french', phone_number: '09')
macdo.save

kfc = Restaurant.new(name: 'KFC', address: '5 Rue Bob', category: 'chinese', phone_number: '25')
kfc.save

jolibee = Restaurant.new(name: 'JoliBee', address: '87 Avenue Lo', category: 'italian', phone_number: '40')
jolibee.save

mac = Restaurant.new(name: 'Mac', address: '12 Bd Carnot', category: 'belgian', phone_number: '65')
mac.save

bobby = Restaurant.new(name: 'Bobby', address: '89 Avenue Bibi', category: 'japanese', phone_number: '56')
bobby.save

puts Restaurant.count
