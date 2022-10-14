class SpicySaucesController < ApplicationController
  def index
    @spicysauces = SpicySauce.all 
  end

  def show 
    @spicysauces = SpicySauce.find(params[:id])
  end
end