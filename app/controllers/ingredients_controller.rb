class IngredientsController < ApplicationController

  before_action :set_cocktail, only: [ :new, :create ]

  def new
    @ingredients = Ingredient.new
  end


  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.cocktail = @cocktail
    if ingredient.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end


  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end


end
