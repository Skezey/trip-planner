class LocationsController < ApplicationController

  before_action :set_location, only: [:show, :edit, :update, :destroy]
  # anything that requires the id
  def index
    @locations = Location.all
  end

  def show
    set_address
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      render :new
    end
  end

  def edit
    # dont need because of the before action
  end

  def update
    if @location.update(location_params)
      redirect_to locations_path
    else
      render :edit
    end
  end

 def destroy
   @location.destroy
   redirect_to locations_path

 end
 
 
   private
   def location_params
     params.require(:location).permit(:name, :days)
   end
 
   def set_location
     @location = Location.find(params[:id])
     # this grabs which id you are currently selecting
   end

   def set_address
    @address = @location.address

   end

   def set_trip
    @trip = Trip.find(params[:id])
  end
 
 end
