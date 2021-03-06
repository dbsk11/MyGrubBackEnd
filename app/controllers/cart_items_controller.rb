class CartItemsController < ApplicationController
    def index
        cartitems = CartItem.all
        render json: cartitems
    end

    def show
        cartitem = CartItem.find(params[:id])
        render json: cartitem
    end

    def create
        cartitem = CartItem.create!(cart_items_params)

        render json: cartitem
    end

    def update
        cartitem = CartItem.find(params[:id])

        cartitem.update(cart_items_params)
        
        render json:cartitem
    end

    def destroy
        cartitem = CartItem.find(params[:id])
        cartitem.destroy
    end

    private

    def cart_items_params
        params.require(:cart_item).permit(:quantity, :item_id, :users_cart_id)
    end
end
