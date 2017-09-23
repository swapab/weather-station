require 'test_helper'

describe Weather do
  let(:weather) { Weather.new }

  it 'gets current weather data' do
    weather.stubs(:weather_service).returns(mock(current: sample_weather))

    refute_nil weather.data
  end
end
