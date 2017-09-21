require 'test_helper'

class CurrentWeatherTest < Capybara::Rails::TestCase
  test 'get current' do
    visit root_path

    assert page.has_content?('Show Weather for')
  end

  test 'redirects to show' do
    visit root_path

    select('India', from: 'Country')
    fill_in('City', with: 'Mumbai')

    click_button('Show Weather')

    assert_equal location_path('mumbai-in'), page.current_path
  end
end
