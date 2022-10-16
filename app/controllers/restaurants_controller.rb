class RestaurantsController < ApplicationController
  def index 
    @restaurants = Restaurant.all.order(created_at: :desc)
  end

  def show 
    @restaurant = Restaurant.find(params[:id])
  end

  def new 
  end

  def create 
    restaurant = Restaurant.create!(restaurant_params)
    redirect_to "/restaurants/"
  end

  def restaurant_params
    params.permit(:name)
  end
end