class MealsController < ApplicationController

  def new
    @meal = Meal.new
  end

  def index
    @meals = Meal.all
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to meals_url, notice: 'Successfully created meal'
    else
      render 'new'
    end

  def show
    @meal = Meal.find(params[:id])
  end
end

  private
  def meal_params
    params.require(:meal).permit(:id, :name, :url, :country_id)
  end
end