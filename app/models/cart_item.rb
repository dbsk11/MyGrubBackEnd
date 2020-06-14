class CartItem < ApplicationRecord
    belongs_to :item
    belongs_to :users_cart
    belongs_to :restaurant_menu, through: :item
end
