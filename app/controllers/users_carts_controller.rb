class UsersCartsController < ApplicationController
    def index
        userscarts = UsersCart.all
        render json: userscarts
    end

    def show
        userscart = UsersCart.find(params[:id])

        cart = userscart.cart_items

        render json: cart
    end
    
    

end
