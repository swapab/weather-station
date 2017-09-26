require 'test_helper'

module Api
  describe Weather::Parser do
    let(:request) { sample_weather.keys }
    let(:parser) { Weather::Parser.new(sample_data, request) }

    it 'should return expected response' do
      assert_equal sample_weather, parser.response
    end

    it 'returns empty response for blank data' do
      empty_parser = Weather::Parser.new({}, request)
      assert_empty empty_parser.response
    end
  end
end
