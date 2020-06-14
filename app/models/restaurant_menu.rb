class RestaurantMenu < ApplicationRecord
    has_many :items
    has_many :cart_items, through: :items
end
