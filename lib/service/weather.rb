module Service
  class Weather
    attr_reader :request, :location

    def initialize(location, request = [])
      @location = location
      @request = request | default_request
    end

    def current
      Api::Weather::Current.new(location.query, request: request).get
    end

    private

    def default_request
      %w(temperature
         min_temperature
         max_temperature
         wind
         cloudiness
         pressure
         humidity
         sunrise
         sunset
         geo_location)
    end
  end
end
