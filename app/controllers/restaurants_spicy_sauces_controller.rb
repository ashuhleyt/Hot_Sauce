class RestaurantsSpicySaucesController < ApplicationController
  def index 
    @restaurants = Restaurant.find(params[:id])
    @spicysauces = @restaurants.spicy_sauces
  end

  def new
    @restaurant = Restaurant.find(params[:id])
  end

  def create 
    @restaurant = Restaurant.find(params[:id])
    @spicysauces = @restaurant.spicy_sauces.create!(restaurant_spicy_sauces_params)
    redirect_to "/restaurants/#{@restaurant.id}/spicy_sauces"
  end

  private 
  def restaurant_spicy_sauces_params
    params.permit(:name, :spice_level, :calories, :made_today, :restaurant_id)
  end
end