# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'gpadillaq@gmail.com', password: 123123, password_confirmation: 123123)

Coin.where(descripcion: 'Córdoba', simbolo: 'C$').first_or_create!
Coin.where(descripcion: 'Dolar', simbolo: '$').first_or_create!

BusinessPartnerType.where(descripcion: 'Cliente').first_or_create!
BusinessPartnerType.where(descripcion: 'Proveedor').first_or_create!
