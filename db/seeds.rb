# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying cart items"
CartItem.destroy_all

puts "destroying items"
Item.destroy_all

puts "destroying users_carts"
UsersCart.destroy_all

puts "destroying restaurant_menus"
RestaurantMenu.destroy_all

puts "creating restaurant_menus"
5.times do
    RestaurantMenu.create(name: Faker::Name.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone, cuisine: Faker::Food.ingredient)
end

puts "creating user cart"
UsersCart.create(name: "Jackson", address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone)

puts "creating items"
20.times do 
    Item.create(price: rand(1..20), category: Faker::Food.ingredient, description: Faker::Food.description, restaurant_menu_id: RestaurantMenu.all.sample.id)
end

puts "creating cart-items"
10.times do 
    CartItem.create(quantity: rand(1..3), item_id: Item.all.sample.id, users_cart_id: UsersCart.all.sample.id)
end

