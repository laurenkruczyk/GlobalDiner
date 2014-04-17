class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  # def create
  #   @country = Country.new(country_params)
  #   if @country.save
  #     redirect_to country_meal_url, notice: 'Successfully created country'
  #   else
  #     render 'new'
  #   end

  def show
    @country = Country.find(params[:id])
  end
end

# private
#   def meal_params
#     params.require(:country).permit(:name, :iso)
#  end
# end

 