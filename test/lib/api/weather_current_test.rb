require 'test_helper'

module Api
  describe Weather::Current do
    let(:query) { 'London, UK' }
    let(:current_weather) { Weather::Current.new(query) }

    it 'initializes with query and default request options' do
      assert_equal query, current_weather.query
      assert_nil current_weather.request
    end

    it 'uses OpenWeather::Current api' do
      assert_equal ::OpenWeather::Current, current_weather.api
    end

    describe '.get' do
      before do
        mock_api = mock(city: sample_data)
        current_weather.stubs(:api).returns(mock_api)
        Weather::Parser.any_instance.stubs(:response).returns(sample_weather)
      end

      it 'returns current weather' do
        assert sample_weather, current_weather.get
      end
    end
  end
end
