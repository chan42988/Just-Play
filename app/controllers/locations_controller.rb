class LocationsController < ApplicationController

  def index
    # if params[:search].present?
    #   @locations = Location.near(params[:search], 50, :order => :distance)
    # else
    #   @locations = Location.all
    # end
  end

  def show
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to @location, :notice => "Successfully created location."
    else
      render :action => 'new'
    end
  end

  def complete
    # redirect_to location_path
  end

  private

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude, :ip)
  end

end
