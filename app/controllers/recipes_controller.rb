class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build name: "Sugar"
    @recipe.ingredients.build name: "Flower"
  end

  def create
    @recipe = Recipe.create params[:recipe]

    redirect_to @recipe
  end
end
