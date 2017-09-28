require 'test_helper'

module Api
  describe Weather do
    describe 'base api is abstract' do
      let(:base) { Weather::Base.new }

      it 'raises error for .get method' do
        assert_raises(NotImplementedError) { base.get }
      end

      it 'raises error for .api method' do
        assert_raises(NotImplementedError) { base.api }
      end
    end
  end
end
