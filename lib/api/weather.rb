require 'open_weather'
require 'api/weather/parser'

module Api
  module Weather
    def self.options
      @options ||= { units: 'metric', APPID: ENV['WEATHER_API_ID'] }
    end

    class Base
      def options
        Weather.options
      end

      def get
        raise NotImplementedError
      end

      def api
        raise NotImplementedError
      end
    end

    class Current < Base
      attr_reader :query, :request

      def initialize(query, options = {})
        @query = query
        @request = options[:request]
      end

      def get
        Weather::Parser.new(api.city(query, options), request).response
      end

      def api
        OpenWeather::Current
      end
    end

    class Forecast; end

    class ForecastDaily; end
  end
end
