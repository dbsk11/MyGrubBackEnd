# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




RestaurantMenu.destroy_all

Item.destroy_all

10.times do
    RestaurantMenu.create(name: Faker::Restaurant.name, cuisine: Faker::Restaurant.type, phoneNumber: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address )

end


t.integer "price"
t.string "category"
t.string "description"
t.integer "restaurant_menu_id"


100.times do
    Item.create(name: Faker::Dessert.variety, price: rand(1..10), category: ["apps", "mains", "bevs","desserts"].sample, restaurant_menu_id: RestaurantMenu.all.id.sample)
end
