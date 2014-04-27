class CountriesController < ApplicationController

  # def index
  #   @countries = Country.all
  # end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      redirect_to @country, notice: 'Successfully created country'
    else
      render 'new'
    end
  end

  def show
    @country = Country.find(params[:id])
    @meals = Meal.where(country_id: @country.id)
  end



private
  def country_params
    params.require(:country).permit(:name, :iso)
 end
end

 