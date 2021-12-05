class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end
  
  def show
    @trip = Trip.find(params[:id])
    @markers =
      [{
        lat: @trip.latitude,
        lng: @trip.longitude
      }]
  end
end
