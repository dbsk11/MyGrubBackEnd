class RestaurantMenusController < ApplicationController


    def index
        restaurantMenus = RestaurantMenu.all
        render json: restaurantMenus
    end


    def show
        @restaurant = RestaurantMenu.find(params[:id])

        menu =  @restaurant.items

        render json: menu

    end

    
end
