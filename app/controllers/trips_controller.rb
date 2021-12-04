class TripsController < ApplicationController
  def show
    @trips = Trip.all
  end
end
