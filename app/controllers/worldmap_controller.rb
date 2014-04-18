class WorldmapController < ApplicationController

  def index
    respond_to do |format|
      format.html
      format.json {render json: {data: {'US' => '20', 'GB' => '100'}, 
      markers: [
        {latLng: [-20.2, 57.5], name: 'Mauritius', id: 1}
      ]
      }}
    end
  end
end