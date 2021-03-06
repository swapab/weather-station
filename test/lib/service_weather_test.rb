require 'test_helper'

module Service
  describe Weather do
    let(:default_location) { Location::Default.new }
    let(:weather_service) { Service::Weather.new(default_location) }

    describe 'current' do
      before do
        Api::Weather::Current
          .any_instance
          .expects(:get).returns(sample_weather)
      end

      it 'given city and country should return current weather' do
        refute_nil weather_service.current
      end

      it 'gets expected response for request' do
        assert_equal sample_weather.keys, weather_service.current.keys
      end
    end
  end
end
