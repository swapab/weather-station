require "test_helper"

describe Location do
  let(:loc) { FactoryGirl.create(:location, :berlin) }

  it 'override to_param' do
    assert_equal 'berlin-germany', loc.to_param
  end
end
