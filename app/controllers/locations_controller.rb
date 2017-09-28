class LocationsController < ApplicationController
  rescue_from (Api::Weather::Error::CityNonFound) { |error| city_not_found(error) }

  def create
    @location = Location.new(
      country: params[:location][:country],
      city: params[:location][:city]
    )

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
    @location = Location.new(params_to_attributes)
    @weather_data =
      Rails.cache.fetch("location/#{params[:id]}", expires_in: 10.minutes) do
        Weather.new(@location).data
      end
  end

  def edit
  end

  private

  def city_not_found(error)
    attrs = params_to_attributes
    @location = Location.new(attrs.merge(country: attrs[:country].upcase))
    @location.errors.add(:city, error.message)
    render :new
  end

  def params_to_attributes
    return {} unless params[:id]

    city, country = params[:id].split('-')
    { city: city, country: country }
  end
end
