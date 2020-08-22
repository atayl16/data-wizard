class LocationsController < ApplicationController
  def index
    @locations = Location.order('location_id')
  end
end
