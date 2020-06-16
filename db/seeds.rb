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
RestaurantMenu.create(name: "Pizza and Pasta", cuisine: Italian, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)
RestaurantMenu.create(name: "Taste of Venice", cuisine: Italian, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)
RestaurantMenu.create(name: "Lorenzo's Pizzeria", cuisine: Italian, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)

RestaurantMenu.create(name: "Taste of Thailand", cuisine: Thai, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)
RestaurantMenu.create(name: "House of Pad Thai", cuisine: Thai, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)
RestaurantMenu.create(name: "Thai Kitchen", cuisine: Thai, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)

RestaurantMenu.create(name: "Jack's Steakhouse", cuisine: American, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)
RestaurantMenu.create(name: "Burger House", cuisine: American, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)
RestaurantMenu.create(name: "Pat's Grillhouse", cuisine: American, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)

RestaurantMenu.create(name: "Las Tapas", cuisine: Mexican, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)
RestaurantMenu.create(name: "Los Marineros", cuisine: Mexican, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)
RestaurantMenu.create(name: "Sabor del Mar", cuisine: Mexican, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)


puts "creating user_cart"
UsersCart.create(name: Faker::Name.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone)

puts "creating items"
# restaurant 1 - Italian
Item.create(name: "Arugula Salad with Prosciutto", price: 8, category: "Appetizer", restaurant_menu_id: 1, description: "Fresh salad topped with thinly sliced prosciutto")
Item.create(name: "Mozzarella Sticks", price: 10, category: "Appetizer", restaurant_menu_id: 1, description: "Breaded mozzarella sticks")
Item.create(name: "Calamari", price: 9, category: "Appetizer", restaurant_menu_id: 1, description: "Fried calamari served with marinara sauce and a slice of lemon")
Item.create(name: "Four Mushroom Pie", price: 22, category: "Entree", restaurant_menu_id: 1, description: "Our popular house pizza with four different types of mushrooms")
Item.create(name: "Chicken Parmigiana", price: 18, category: "Entree", restaurant_menu_id: 1, description: "Breaded chicken covered in tomato sauce, mozzarella, and provolone cheese")
Item.create(name: "Meat-Lovers Lasagna", price: 17, category: "Entree", restaurant_menu_id: 1, description: "Deliciously stacked layers of pasta with ricotta cheese and three types of meat: sausage, beef, and bacon")
Item.create(name: "Eggplant Rollatini", price: 15, category: "Entree", restaurant_menu_id: 1, description: "Eggplant stuffed with cheese and spinach")
Item.create(name: "Tiramisu", price: 7, category: "Dessert", restaurant_menu_id: 1, description: "Rich sponge cake soaked in coffee with alternating layers of mascarpone cheese")
Item.create(name: "Creme Brulee", price: 8, category: "Dessert", restaurant_menu_id: 1, description: "Rich custard base wopped with hardened caramalized surgeon")
Item.create(name: "Tartufo", price: 7, category: "Dessert", restaurant_menu_id: 1, description: "Vanilla and chocolate gelato covered with cherries and slice almonds inside")
Item.create(name: "Sparkling Pellegrino", price: 5, category: "Beverages", restaurant_menu_id: 1, description: "500ml bottle")
Item.create(name: "Coffee", price: 4, category: "Beverages", restaurant_menu_id: 1, description: "Served hot or cold")
Item.create(name: "Soda", price: 4, category: "Beverages", restaurant_menu_id: 1, description: "Your choice of sprite, cola, or ginger ale")

# restaurant 2 - Italian
Item.create(name: "Grilled Octopus", price: 22, category: "Appetizer", restaurant_menu_id: 2, description: "Tenderized octopus, char-grilled, and drizzled with olive oil")
Item.create(name: "Mozzarella Caprese", price: 18, category: "Appetizer", restaurant_menu_id: 2, description: "Fresh mozzarella, olive oil, balsamic vinegar, and basil leaves")
Item.create(name: "Zuppa di Clams", price: 20, category: "Appetizer", restaurant_menu_id: 2, description: "Fresh clams cooked in your choice of white or red wine with garlic and herbs")
Item.create(name: "Rigatoni and Broccoli with White Sauce", price: 27, category: "Entree", restaurant_menu_id: 2, description: "Garlic and olive oil white sauce with fresh herbs, broccoli, and pecorino cheese")
Item.create(name: "Lobster Ravioli", price: 38, category: "Entree", restaurant_menu_id: 2, description: "Generous chunks of lobster in ravioli covered in a rich tomato sauce")
Item.create(name: "Penne alla Vodka", price: 32, category: "Entree", restaurant_menu_id: 2, description: "Penne covered in a rich tomato, vodka, onion, and garlic sauce")
Item.create(name: "Fusilli Vincenzo", price: 28, category: "Entree", restaurant_menu_id: 2, description: "Pink sauce with char-grilled vegetables")
Item.create(name: "Bread Pudding", price: 18, category: "Dessert", restaurant_menu_id: 2, description: "Bread soaked in sweet custard with chocolate chunks and raisins")
Item.create(name: "Chocolate Torta", price: 17, category: "Dessert", restaurant_menu_id: 2, description: "Dark chocolate with a hint of coffee served with fresh whipped cream")
Item.create(name: "Tiramisu", price: 20, category: "Dessert", restaurant_menu_id: 2, description: "Rich sponge cake soaked in coffee with alternating layers of mascarpone cheese")
Item.create(name: "Sparkling Pellegrino", price: 5, category: "Beverages", restaurant_menu_id: 2, description: "500ml bottle")
Item.create(name: "Coffee", price: 4, category: "Beverages", restaurant_menu_id: 2, description: "Served hot or cold")
Item.create(name: "Soda", price: 4, category: "Beverages", restaurant_menu_id: 2, description: "Your choice of sprite, cola, or ginger ale")

# restaurant 3 - Italian
Item.create(name: "Calamari", price: 9, category: "Appetizer", restaurant_menu_id: 3, description: "Fried calamari served with marinara sauce and a slice of lemon")
Item.create(name: "Chicken Wings", price: 8, category: "Appetizer", restaurant_menu_id: 3, description: "Deep fried and rubbed in our homemade spice mix")
Item.create(name: "Stuffed Mushroom Caps", price: 7, category: "Appetizer", restaurant_menu_id: 3, description: "Baby bella mushrooms stuffed with a garlic herb mixture roasted to perfection")
Item.create(name: "Chicken Parmigiana", price: 15, category: "Entree", restaurant_menu_id: 3, description: "Breaded chicken covered in tomato sauce, mozzarella, and provolone cheese")
Item.create(name: "Penne alla Vodka", price: 18, category: "Entree", restaurant_menu_id: 3, description: "Penne covered in a rich tomato, vodka, onion, and garlic sauce")
Item.create(name: "Barbecue Chicken Pizza", price: 22, category: "Entree", restaurant_menu_id: 3, description: "Our house pie with chunks of breaded chicken pieces drizzled with barbecue sauce")
Item.create(name: "Mushroom Pizza", price: 20, category: "Entree", restaurant_menu_id: 3, description: "Topped with king oyster mushrooms, portobella mushrooms, button mushrooms, and enoki mushrooms")
Item.create(name: "Bread Pudding", price: 8, category: "Dessert", restaurant_menu_id: 3, description: "Bread soaked in sweet custard with chocolate chunks and raisins")
Item.create(name: "Tiramisu", price: 7, category: "Dessert", restaurant_menu_id: 3, description: "Rich sponge cake soaked in coffee with alternating layers of mascarpone cheese")
Item.create(name: "Chocolate Torta", price: 7, category: "Dessert", restaurant_menu_id: 3, description: "Dark chocolate with a hint of coffee served with fresh whipped cream")
Item.create(name: "Sparkling Pellegrino", price: 5, category: "Beverages", restaurant_menu_id: 3, description: "500ml bottle")
Item.create(name: "Coffee", price: 4, category: "Beverages", restaurant_menu_id: 3, description: "Served hot or cold")
Item.create(name: "Soda", price: 4, category: "Beverages", restaurant_menu_id: 3, description: "Your choice of sprite, cola, or ginger ale")

# restaurant 4 - Thai
Item.create(name: "Chicken Satay Sticks", price: 7, category: "Appetizer", restaurant_menu_id: 4, description: "Marinated chicken grilled on skewers")
Item.create(name: "Vegetable Eggrolls", price: 5, category: "Appetizer", restaurant_menu_id: 4, description: "Freshly made eggrolls deep-fried")
Item.create(name: "Curry Puffs", price: 7, category: "Appetizer", restaurant_menu_id: 4, description: "Puff pastry filled with vegetables")
Item.create(name: "Pad Thai", price: 11, category: "Entree", restaurant_menu_id: 4, description: "Spicy flat-noodle stir-fry with vegetables and choice of protein")
Item.create(name: "Pad See Ew", price: 11, category: "Entree", restaurant_menu_id: 4, description: "Flat noodle stir-fry with soy sauce, vegetables, and choice of protein")
Item.create(name: "Seafood Basil", price: 15, category: "Entree", restaurant_menu_id: 4, description: "Seafood stir-fry with fragrant basil leaves")
Item.create(name: "Duck Green Curry", price: 12, category: "Entree", restaurant_menu_id: 4, description: "Thai green curry with mixed vegetables in coconut milk")
Item.create(name: "Fried Ice Cream", price: 7, category: "Dessert", restaurant_menu_id: 4, description: "Select one of the following flavors: vanilla, green tea, chocolate, lychee")
Item.create(name: "Sweet Sticky Rice with Mango", price: 8, category: "Dessert", restaurant_menu_id: 4, description: "Steamed sticky rice mixed with coconut milk and sugar and served with sliced mangoes")
Item.create(name: "Fried Bananas", price: 7, category: "Dessert", restaurant_menu_id: 4, description: "Fried bananas topped with coconut ice cream and drizzled with honey")
Item.create(name: "Sparkling Pellegrino", price: 5, category: "Beverages", restaurant_menu_id: 4, description: "500ml bottle")
Item.create(name: "Coffee", price: 4, category: "Beverages", restaurant_menu_id: 4, description: "Served hot or cold")
Item.create(name: "Thai Iced Tea", price: 5, category: "Beverages", restaurant_menu_id: 4, description: "Rich black tea sweeted with condensed milk and served over ice")

# restaurant 5 - Thai
Item.create(name: "Chicken Satay Sticks", price: 8, category: "Appetizer", restaurant_menu_id: 5, description: "Marinated chicken grilled on skewers")
Item.create(name: "Thai Spring Rolls", price: 7, category: "Appetizer", restaurant_menu_id: 5, description: "Freshly made eggrolls deep-fried and served with plum sauce")
Item.create(name: "Curry Puffs", price: 8, category: "Appetizer", restaurant_menu_id: 5, description: "Puff pastry filled with vegetables")
Item.create(name: "Green Curry", price: 12, category: "Entree", restaurant_menu_id: 5, description: "Thai green curry with mixed vegetables in coconut milk")
Item.create(name: "Red Curry", price: 15, category: "Entree", restaurant_menu_id: 5, description: "Thai red curry with mixed vegetables in coconut milk")
Item.create(name: "Pad Thai", price: 17, category: "Entree", restaurant_menu_id: 5, description: "Spicy flat-noodle stir-fry with vegetables and choice of protein")
Item.create(name: "Pad See Ew", price: 17, category: "Entree", restaurant_menu_id: 5, description: "Flat noodle stir-fry with soy sauce, vegetables, and choice of protein")
Item.create(name: "Fried Ice Cream", price: 10, category: "Dessert", restaurant_menu_id: 5, description: "Select one of the following flavors: vanilla, green tea, chocolate, lychee")
Item.create(name: "Sweet Sticky Rice with Mango", price: 8, category: "Dessert", restaurant_menu_id: 5, description: "Steamed sticky rice mixed with coconut milk and sugar and served with sliced mangoes")
Item.create(name: "Fried Bananas", price: 9, category: "Dessert", restaurant_menu_id: 5, description: "Fried bananas topped with coconut ice cream and drizzled with honey")
Item.create(name: "Sparkling Pellegrino", price: 5, category: "Beverages", restaurant_menu_id: 5, description: "500ml bottle")
Item.create(name: "Coffee", price: 4, category: "Beverages", restaurant_menu_id: 5, description: "Served hot or cold")
Item.create(name: "Thai Iced Tea", price: 5, category: "Beverages", restaurant_menu_id: 5, description: "Rich black tea sweeted with condensed milk and served over ice")


# restaurant 6 - Thai
Item.create(name: "Steamed Dumplings", price: 7, category: "Appetizer", restaurant_menu_id: 6, description: "Steamed mixed vegetables and clear noodles wrapped in dough")
Item.create(name: "Curry Puffs", price: 8, category: "Appetizer", restaurant_menu_id: 6, description: "Puff pastry filled with vegetables")
Item.create(name: "Thai Sampler", price: 9, category: "Appetizer", restaurant_menu_id: 6, description: "Two pieces of steamed dumplings and two pieces of curry puffs")
Item.create(name: "Pineapple Fried Rice", price: 12, category: "Entree", restaurant_menu_id: 6, description: "Stir-fried jasmine rice with vegetables, scallions and lime")
Item.create(name: "Seafood Tom Yum", price: 15, category: "Entree", restaurant_menu_id: 6, description: "Mixed seafood, shrimp, calamari, and mushroom in a traditional hot and sour soup")
Item.create(name: "Green Curry", price: 14, category: "Entree", restaurant_menu_id: 6, description: "Thai green curry with mixed vegetables in coconut milk")
Item.create(name: "Red Curry", price: 14, category: "Entree", restaurant_menu_id: 6, description: "Thai red curry with mixed vegetables in coconut milk")
Item.create(name: "Fried Ice Cream", price: 8, category: "Dessert", restaurant_menu_id: 6, description: "Select one of the following flavors: vanilla, green tea, chocolate, lychee")
Item.create(name: "Sweet Sticky Rice with Mango", price: 7, category: "Dessert", restaurant_menu_id: 6, description: "Steamed sticky rice mixed with coconut milk and sugar and served with sliced mangoes")
Item.create(name: "Fried Bananas", price: 7, category: "Dessert", restaurant_menu_id: 6, description: "Fried bananas topped with coconut ice cream and drizzled with honey")
Item.create(name: "Sparkling Pellegrino", price: 5, category: "Beverages", restaurant_menu_id: 6, description: "500ml bottle")
Item.create(name: "Coffee", price: 4, category: "Beverages", restaurant_menu_id: 6, description: "Served hot or cold")
Item.create(name: "Thai Iced Tea", price: 5, category: "Beverages", restaurant_menu_id: 6, description: "Rich black tea sweeted with condensed milk and served over ice")

# restaurant 7 - American - steakhouse
Item.create(name: "French Onion Soup", price: , category: "Appetizer", restaurant_menu_id: 7, description: "Slow-cooked caramalized onions, French break, gruyere cheese in a beef stock base")
Item.create(name: "Sliced Tomatoes & Onions", price: , category: "Appetizer", restaurant_menu_id: 7, description: "Thickly sliced tomato and onions in our homemade vinaigrette")
Item.create(name: "Greek Salad", price: , category: "Appetizer", restaurant_menu_id: 7, description: "Fresh salad bed with cucumbers, onions, peppers, kalamata olives, and grape tomatoes")
Item.create(name: "Rib Eye Steak", price: 40, category: "Entree", restaurant_menu_id: 7, description: "Seasoned and seared with potato puree and a side of steamed asparagus")
Item.create(name: "T-Bone Steak", price: 40, category: "Entree", restaurant_menu_id: 7, description: "Seasoned and seared with potato puree and a side of broccoli")
Item.create(name: "Porterhouse Steak for Two", price: 80, category: "Entree", restaurant_menu_id: 7, description: "Seasoned, seared, and served with a choice of three sides")
Item.create(name: "Porterhouse Steak for Four", price: 170, category: "Entree", restaurant_menu_id: 7, description: "Seasoned, seared, and served with a choice of six sides")
Item.create(name: "Cheesecake", price: , category: "Dessert", restaurant_menu_id: 7, description: "Graham cracker crust with a rich and creamy filling")
Item.create(name: "Pecan Pie", price: , category: "Dessert", restaurant_menu_id: 7, description: "Our signature homemade pie naturally sweetened with maple syrup")
Item.create(name: "Chocolate Mousse Cake", price: , category: "Dessert", restaurant_menu_id: 7, description: "Super moist dark chocolate mousse cake")
Item.create(name: "Sparkling Pellegrino", price: 5, category: "Beverages", restaurant_menu_id: 7, description: "500ml bottle")
Item.create(name: "Lemonade", price: 4, category: "Beverages", restaurant_menu_id: 7, description: "Fresh squeezed lemonade")
Item.create(name: "Thai Iced Tea", price: 5, category: "Beverages", restaurant_menu_id: 7, description: "Rich black tea sweeted with condensed milk and served over ice")

# restaurant 8 - American - burgers
Item.create(name: "Caesar Salad", price: , category: "Appetizer", restaurant_menu_id: 8, description: "Salad bed of romaine lettuce with croutons, lemon juice, olive oil, and egg with homemade caesar dressing")
Item.create(name: "Chicken Wings", price: , category: "Appetizer", restaurant_menu_id: 8, description: "Double deep fried and rubbed in our homemade spice mix")
Item.create(name: "Spinach and Artichoke Dip", price: , category: "Appetizer", restaurant_menu_id: 8, description: "Rich and creamy dip filled with spinach and artichokes")
Item.create(name: "Cheeseburger", price: , category: "Entree", restaurant_menu_id: 8, description: "Traditional cheeseburger with lettuce, tomato, and onion")
Item.create(name: "Avocado Greens Burger", price: , category: "Entree", restaurant_menu_id: 8, description: "Cheeseburger with slices of avocado, mixed greens, and grilled onions")
Item.create(name: "Texas Cowboy Burger", price: , category: "Entree", restaurant_menu_id: 8, description: "Cheeseburger with lettuce, tomato, and a fried egg on top")
Item.create(name: "Tuna Ahi Burger", price: , category: "Entree", restaurant_menu_id: 8, description: "Lightly seared tuna with a wasabi mayo sauce")
Item.create(name: "Apple Strudel", price: , category: "Dessert", restaurant_menu_id: 8, description: "Savory strudel pastry filled with pieces of Gala apples, sugar, cinnamon, and bread crumbs")
Item.create(name: "Key Lime Pie", price: , category: "Dessert", restaurant_menu_id: 8, description: "Rich graham cracker crust with a tart key lime filling")
Item.create(name: "Hot Fudge Sundae", price: , category: "Dessert", restaurant_menu_id: 8, description: "Two scoops of vanilla ice cream served with hot chocolate sauce, sprinkles, nuts, and whipped cream")
Item.create(name: "Sparkling Pellegrino", price: 5, category: "Beverages", restaurant_menu_id: 8, description: "500ml bottle")
Item.create(name: "Lemonade", price: 4, category: "Beverages", restaurant_menu_id: 8, description: "Fresh squeezed lemonade")
Item.create(name: "Thai Iced Tea", price: 5, category: "Beverages", restaurant_menu_id: 8, description: "Rich black tea sweeted with condensed milk and served over ice")

# restaurant 9 - American - steakhouse
Item.create(name: "Jumbo Shrimp Cocktail", price: 32, category: "Appetizer", restaurant_menu_id: 9, description: "Jumbo shrimp served with chili sauce")
Item.create(name: "Crab Cake", price: 28, category: "Appetizer", restaurant_menu_id: 9, description: "Classic crab cake combined with lemon and parsley")
Item.create(name: "Crabmeat Cocktail", price: 30, category: "Appetizer", restaurant_menu_id: 9, description: "Fresh crab from the market served with green onion, celery, dill, salt, and pepper")
Item.create(name: "Prime NY Sirloin Steak", price: 55, category: "Entree", restaurant_menu_id: 9, description: "Seasoned and seared with potato puree and a side of steamed asparagus")
Item.create(name: "T-Bone Steak", price: 60, category: "Entree", restaurant_menu_id: 9, description: "Seasoned and seared with potato puree and a side of broccoli")
Item.create(name: "Filet Mignon", price: 60, category: "Entree", restaurant_menu_id: 9, description: "Seasoned, seared, and served with a baked potato")
Item.create(name: "Lamb Chop", price: 55, category: "Entree", restaurant_menu_id: 9, description: "Seasoned, seared, and served with potato puree and a side of creamed spinach")
Item.create(name: "Tiramisu", price: 15, category: "Dessert", restaurant_menu_id: 9, description: "Rich sponge cake soaked in coffee with alternating layers of mascarpone cheese")
Item.create(name: "Ice Cream", price: 10, category: "Dessert", restaurant_menu_id: 9, description: "Homemade! Select from vanilla, chocolate, and strawberry")
Item.create(name: "Hot Fudge Sundae"12, price: , category: "Dessert", restaurant_menu_id: 9, description: "Two scoops of vanilla ice cream served with hot chocolate sauce, sprinkles, nuts, and whipped cream")
Item.create(name: "Sparkling Pellegrino", price: 5, category: "Beverages", restaurant_menu_id: 9, description: "500ml bottle")
Item.create(name: "Lemonade", price: 4, category: "Beverages", restaurant_menu_id: 9, description: "Fresh squeezed lemonade")
Item.create(name: "Thai Iced Tea", price: 5, category: "Beverages", restaurant_menu_id: 9, description: "Rich black tea sweeted with condensed milk and served over ice")

# restaurant 10 - Mexican
Item.create(name: "", price: , category: "Appetizer", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Appetizer", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Appetizer", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Dessert", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Dessert", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Dessert", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Beverages", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Beverages", restaurant_menu_id: 10, description: "")
Item.create(name: "", price: , category: "Beverages", restaurant_menu_id: 10, description: "")

# restaurant 11 - Mexican
Item.create(name: "", price: , category: "Appetizer", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Appetizer", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Appetizer", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Dessert", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Dessert", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Dessert", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Beverages", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Beverages", restaurant_menu_id: 11, description: "")
Item.create(name: "", price: , category: "Beverages", restaurant_menu_id: 11, description: "")

# restaurant 12 - Mexican
Item.create(name: "", price: , category: "Appetizer", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Appetizer", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Appetizer", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Entree", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Dessert", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Dessert", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Dessert", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Beverages", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Beverages", restaurant_menu_id: 12, description: "")
Item.create(name: "", price: , category: "Beverages", restaurant_menu_id: 12, description: "")