def sample_data
  {
    'coord' => { 'lon' => 13.37, 'lat' => 52.52 },
    'weather' => [{
                    'id' => 802,
                    'main' => 'Clouds',
                    'description' => 'scattered clouds',
                    'icon' => '03n'
                  }],
    'base' => 'stations',
    'main' => {
      'temp' => 14, 'pressure' => 1024, 'humidity' => 71,
      'temp_min' => 14, 'temp_max' => 14
    },
    'visibility' => 10000,
    'wind' => {
      'speed' => 2.1, 'deg' => 20
    },
    'clouds' => { 'all' => 32 },
    'dt' => 1506117000,
    'sys' => {
      'type' => 1, 'id' => 5091, 'message' => 0.0056,
      'country' => 'GB', 'sunrise' => 1506142492, 'sunset' => 1506186091
    },
    'id' => 2643743,
    'name' => 'London',
    'cod' => 200
  }
end

def sample_weather
  {
    'city' => 'London',
    'country' => 'GB',
    'temperature' => '14',
    'min_temperature' => '14',
    'max_temperature' => '14',
    'wind' => 'Speed: 2.1 | Degree: 20',
    'cloudiness' => 'Scattered Clouds',
    'pressure' => '1024',
    'humidity' => '71',
    'sunrise' => '1506142492',
    'sunset' => '1506186091',
    'geo_location' => 'Longitude: 13.37, Latitude: 52.52'
  }
end
