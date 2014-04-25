class WorldmapController < ApplicationController

    def index
      respond_to do |format|
      format.html
      format.json {render json: {data: Country.meal_data}}
    end
  end
end
