class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  before_action
  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)

    @trip.save ? (redirect_to trip_path) : (render :new)
  end


  def edit
  end

  def update
    @trip.update(trip_params) ? (redirect_to trip_path) : (render :edit)
  end

  def destroy
    @trip.destroy
    redirect_to trip_index_path
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date)
  end


end
