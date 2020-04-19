class LocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    @places = @location.places
  end

  def index

  end
end
