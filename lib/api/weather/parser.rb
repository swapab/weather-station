module Api
  module Weather
    class Parser < Struct.new(:data, :request)
      def response
        request.each_with_object({}) do |value, response_hash|
          response_hash[value] = send(value).to_s
        end
      end

      def temperature
        main['temp']
      end

      def min_temperature
        main['temp_min']
      end

      def max_temperature
        main['temp_max']
      end

      def wind
        "Speed: #{data['wind']['speed']} | Degree: #{data['wind']['deg']}"
      end

      def cloudiness
        "#{weather['main']}: #{weather['description']}"
      end

      def pressure
        main['pressure']
      end

      def humidity
        main['humidity']
      end

      def sunrise
        data['sys']['sunrise']
      end

      def sunset
        data['sys']['sunset']
      end

      def geo_location
        "Longitude: #{data['coord']['lon']}, Latitude: #{data['coord']['lat']}"
      end

      private

      def main
        data['main']
      end

      def weather
        data['weather'][0]
      end
    end
  end
end
