# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
products = JSON(File.read('./products.json'))

products.each do |p|
    Product.create({
        name: p['name'],
        type_of: p['type'],
        price: p['price'],
        upc: p['upc'],
        shipping: p['shipping'],
        description: p['description'],
        manufacturer: p['manufacturer'],
        model: p['model'],
        url: p['url'],
        image: p['image']
    })
end
