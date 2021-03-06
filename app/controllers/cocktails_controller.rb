class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end
  def show
    @cocktail = Cocktail.find(params[:id])
  end
  def new
    @cocktail = Cocktail.new
  end
  def create
    @cocktail = Cocktail.new(strong_params)
    if @cocktail.save!
      flash[:success] = "cocktail successfully created"
      redirect_to cocktails_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end 

  private

  def strong_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
