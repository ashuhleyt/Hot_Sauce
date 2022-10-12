class RestaurantsController < ApplicationController
  def index
    @spicysauces = SpicySauce.all 
  end
end