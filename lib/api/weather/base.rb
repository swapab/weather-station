module Api
  module Weather
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
  end
end
