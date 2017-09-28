require 'test_helper'

module Api
  describe Weather::Parser do
    let(:query) { 'Berlin, DE' }
    let(:request) { sample_weather.keys }
    let(:parser) { Weather::Parser.new(sample_data, request, query) }

    it 'should return expected response' do
      assert_equal sample_weather, parser.response
    end

    it 'returns empty response for blank data' do
      empty_parser = Weather::Parser.new({}, request, query)
      assert_empty empty_parser.response
    end

    it 'raises CityNonFound error' do
      error_parser = Weather::Parser.new({ 'cod' => '404' }, request, query)
      error = assert_raises(Api::Weather::Error::CityNonFound) do
        error_parser.response
      end

      err_msg = 'Weather for city, country: Berlin, DE could not be found. '\
                'Please try again with correct city name'

      assert_equal err_msg, error.message
    end
  end
end
