require "test_helper"

describe Location do
  let(:loc) { FactoryGirl.create(:location, :berlin) }

  it 'override to_param' do
    assert_equal 'berlin-germany', loc.to_param
  end

  it 'humanize location to City, Country' do
    assert_equal 'Berlin, GERMANY', loc.humanize
  end
end
