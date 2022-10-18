class SpicySaucesController < ApplicationController
  def index
    @spicysauces = SpicySauce.all 
  end

  def show 
    @spicysauces = SpicySauce.find(params[:id])
  end

  def edit 
    @spicysauces = SpicySauce.find(params[:id])
  end

  def update 
    @spicysauces = SpicySauce.find(params[:id])
    @spicysauces.update(spicy_sauce_params)
    redirect_to "/spicy_sauces/"
  end
private
  def spicy_sauce_params
    params.permit(:name)
  end
end