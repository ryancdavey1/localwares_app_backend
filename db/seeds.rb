# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "John", email: "john.test@aol.com", password: "password")
Location.create(address1: "100 Spear St", city: "San Francisco", state: "CA", postal_code: "94105")
# having separate location class -> each location has a business id
# 