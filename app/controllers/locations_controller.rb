class LocationsController < ApplicationController
  def create
    @location = Location.new(country: params[:location][:country], city: params[:location][:city])
    if @location.valid?
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def new
    @location = Location.new
  end

  def show
  end

  def edit
  end
end
