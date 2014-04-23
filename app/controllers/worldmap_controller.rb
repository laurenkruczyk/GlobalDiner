class WorldmapController < ApplicationController

    def index
      respond_to do |format|
      format.html
      format.json {render json: {data: {'AF' => '1',  'AL' => '2', 'DZ' => '3',
  'AS' => '4', 'AD' => '5', 'AO' => '6', 'AI' => '7', 'AQ' => '8','AG' => '9',
  'AR' => '10', 'AM' => '11', 'AW' => '12', 'AU' => '13', 'AT' => '14','AZ' => '15',
  'BR' => '30', 'IN' => '105', 'IT' => '112', 'TH' => '231'},

       }}
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

