module Api
  module Weather
    class Current < Base
      attr_reader :query, :request

      def initialize(query, options = {})
        @query = query
        @request = options[:request]
      end

      def get
        Weather::Parser.new(
          api.city(query, Config.options), request, query
        ).response
      end

      def api
        OpenWeather::Current
      end
    end
  end
end
