class RestaurantsSpicySaucesController < ApplicationController
  def index 
    restaurants = Restaurant.find(params[:id])
    @spicysauces = restaurants.spicy_sauces
  end
end