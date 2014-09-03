class RestaurantsController < ApplicationController
  skip_before_action :require_login, only: [:show]

  def index
    @restaurants = Restaurant.all 
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = current_user.comments.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path
    else 
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comments = @restaurant.comments
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
end
