class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurant = Restaurants.all 
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
end
