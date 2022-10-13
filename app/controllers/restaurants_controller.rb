class Restaurants < ApplicationController
  def index 
    @restaurants = Restaurant.all
  end
end