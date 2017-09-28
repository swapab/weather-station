require 'test_helper'

class CurrentWeatherTest < Capybara::Rails::TestCase
  test 'get current' do
    visit root_path

    assert page.has_content?('Show Weather for')
  end

  let(:germany) { 'Germany' }
  let(:berlin) { 'Berlin' }
  let(:india) { 'India' }
  let(:mumbai) { 'Mumbai' }

  test 'redirects to show' do
    visit root_path

    select(india, from: 'Country')
    fill_in('City', with: mumbai)

    Weather.any_instance.stubs(:data).returns({})

    click_button('Show Weather')

    assert_equal location_path('mumbai-in'), page.current_path
  end

  test 'should set city/county on error' do
    visit root_path

    select(germany, from: 'Country')
    click_button('Show Weather')

    assert_equal locations_path, page.current_path

    assert_equal 'DE', page.find('#location_country').value

    fill_in('City', with: berlin)
    select('', from: 'Country')
    click_button('Show Weather')

    assert_equal berlin, page.find('#location_city').value
  end

  test 'notify if city or country left blank' do
    visit root_path

    select(india, from: 'Country')
    click_button('Show Weather')

    assert_equal locations_path, page.current_path
    assert page.has_content?("can't be blank")
  end

  test 'render table with weather info' do
    Weather.any_instance.stubs(:data).returns(sample_weather)

    visit root_path

    select(germany, from: 'Country')
    fill_in('City', with: berlin)
    click_button('Show Weather')

    assert_equal location_path('berlin-de'), page.current_path
    assert_equal 1, all('table.weather-table').count
    assert_equal sample_weather.count, all('table.weather-table tr').count
  end

  test 'caching works like a charm' do
    Rails.cache.clear
    Weather.any_instance.stubs(:data).returns(sample_weather)

    assert_nil Rails.cache.read('location/berlin-de')

    visit location_path('berlin-de')

    refute_nil Rails.cache.read('location/berlin-de')
  end

  test 'city not found should render new page with error message' do
    Rails.cache.clear

    Weather.any_instance.expects(:data).raises(
      Api::Weather::Error::CityNonFound, 'Custom error message'
    )

    visit location_path('unknown-zz')

    assert_equal location_path('unknown-zz'), page.current_path
    assert page.has_content?('Custom error message')
  end
end
