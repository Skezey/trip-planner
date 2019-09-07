class LocationsController < ApplicationController
  before_action :set_trip
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  # anything that requires the id
  def index
    @locations = Location.all
  end

  def show
    set_address

  end

  def new
    @location = @trip.locations.new
  end

  def create
    @location = @trip.locations.new(location_params)
    if @location.save
      redirect_to @trip
    else
      render :new
    end
  end

  def edit
    # dont need because of the before action
  end

  def update
    if @trip.location.update(location_params)
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

 def destroy
   @location.destroy
   redirect_to trip_path(@trip)

 end


   private
   def location_params
     params.require(:location).permit(:name, :days, :trip_id)
   end

   def set_location
     @location = Location.find(params[:id])
     # this grabs which id you are currently selecting
   end

   def set_address
    @address = @location.address

   end

   def set_trip
     @trip = Trip.find(params[:trip_id])
   end

 end
