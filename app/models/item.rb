class Item < ApplicationRecord
    belongs_to :restaurant_menu
    has_many :cart_items
end
