class CartItem < ApplicationRecord
    belongs_to :item
    belongs_to :users_cart
end
