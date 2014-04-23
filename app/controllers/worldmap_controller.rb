class WorldmapController < ApplicationController

    def index
      respond_to do |format|
      format.html
      format.json {render json: {data: Country.meal_data}}
    end
  end
end


# BS =>
# BH =>
# BD =>
# BB =>
# BY =>
# BE =>
# BZ =>
# BJ =>
# BM =>
# BT =>
# BO =>
# BA =>
# BW =>
# BV =>
# BR =>
# BQ =>
# IO =>
# VG =>
# BN =>
# BG =>
# BF =>
# BI =>
# KH =>
# CM =>
# CA =>
# CT =>
# CV =>
# KY =>
# CF =>
# TD =>
# CL =>
# CN =>
# CX =>
# CC =>
# CO =>


  #   regions: [
      #   {country: 'United States of America', id: 250}
      # ]

