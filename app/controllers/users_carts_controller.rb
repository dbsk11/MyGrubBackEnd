class UsersCartsController < ApplicationController
    def index
        userscarts = UsersCart.all
        render json: userscarts
    end

    def show
        userscart = UserCart.find(params[:id])
        render json: userscart
    end
    
end
