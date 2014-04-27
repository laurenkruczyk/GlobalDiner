class MealsController < ApplicationController

before_action :find_country, except: [:random]

  def new
    @meal = Meal.new
  end

  def index
    @meals = Meal.all
  end

  def create
    @meal = @country.meals.build(meal_params)
    if @meal.save
      redirect_to @country,
      notice: 'Successfully created recipe'
    else
      render 'new',
      notice: 'Recipe not created'
    end
  end
  
  def show
    if params[:id] == 'random'
       @meal = Meal.random
    else
      @meal = Meal.find(params[:id])
    end
  end
  

  def random
    @meal = Meal.random
    redirect_to country_meal_path(@meal.country, @meal)
  end


protected

  def find_country
    @country = Country.find(params[:country_id])
  end


  def meal_params
    params.require(:meal).permit(:name, :url, :description, :country_id).merge(user: current_user)
  end
end
