# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shirt.create(
    title: "Borussia",
    description: "Maillot à domicile manche longue",
    price: 112,
    image_url: 'bor1.jpg'
)

Shirt.create(
    title: "City",
    description: "Maillot third manche courte",
    price: 200,
    image_url: 'city3.jpg'
)