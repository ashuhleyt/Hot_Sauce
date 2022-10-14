class RestaurantsSpicySaucesController < ApplicationController
  def index 
    @spicysauces = SpicySauce.all
  end
end