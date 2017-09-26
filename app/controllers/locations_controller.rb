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
    location = Location.new(params_to_attributes)
    @weather = Weather.new(location)
  end

  def edit
  end

  private

  def params_to_attributes
    return {} unless params[:id]

    city, country = params[:id].split('-')
    {city: city, country: country}
  end
end
