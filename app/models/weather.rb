require 'service'

class Weather
  attr_reader :location, :period

  def initialize(location = Location::Default.new, period = 'current')
    @period = period
    @location = location
  end

  def data
    @data ||= weather_service.try(period)
  end

  private

  def weather_service
    @weather_service ||= Service::Weather.new(location)
  end
end
