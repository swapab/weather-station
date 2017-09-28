module Api
  module Weather
    class Config
      def self.options
        { units: 'metric', APPID: ENV['WEATHER_API_ID'] }
      end
    end
  end
end
