module Api
  module Weather
    module Error
      class CityNonFound < StandardError
        attr_reader :city, :status

        def initialize(city)
          @city = city
          @status = :not_found
          super(generate_message)
        end

        def generate_message
          "Weather for city, country: #{city} could not be found. " \
          'Please try again with correct city name'
        end
      end
    end
  end
end
