require 'test_helper'

module Api
  module Weather
    describe Error::CityNonFound do
      it 'should initialize error with correct status code' do
        error = Weather::Error::CityNonFound.new('unknown')
        assert_equal :not_found, error.status
      end

      it 'error with a custom error message' do
        error = Weather::Error::CityNonFound.new('unknown')
        err_msg = 'Weather for city, country: unknown could not be found. ' \
                  'Please try again with correct city name'
        assert_equal err_msg, error.message
      end
    end
  end
end
