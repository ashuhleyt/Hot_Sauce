class SpicySaucesController < ApplicationController
  def index
    @spicysauces = SpicySauce.all 
  end
end