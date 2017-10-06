Weather Station [![Build Status](https://travis-ci.org/swapab/weather-station.png)](https://travis-ci.org/swapab/weather-station) [![Code Climate](https://codeclimate.com/github/swapab/weather-station/badges/gpa.svg)](https://codeclimate.com/github/swapab/weather-station)
================

A weather station based on **[Open Weather Map JSON API](http://openweathermap.org/API)**

## My ToDo

### * Must :star:

- [x] Generate new API key on http://openweathermap.org/API
- [x] Home page: Accept city and country
- [x] Validate City/Country: city and country both required
- [x] Table to show data
- [x] Submiting form should show me weather
- [x] Temperature
- [x] Wind
- [x] Cloudiness
- [x] Pressure
- [x] Humidity
- [x] Sunrise
- [x] Sunset
- [x] Geo coords
- [x] Cache weather data with Rails.cache
- [x] Handle OpenWeatherMap error response: 404 - city-not-found
- [ ] Show recent search (persist this info in db?)
- [ ] And yes deply to Heroku(or try OpenShift?)

### Good :sparkles:
- [ ] Show weather forecast(next hour, next 24hr)
- [ ] Auto load cities per country
- [ ] Auto-complete for city and country
- [ ] Integrate weather widget

###  WoW :heart:
- [ ] Graphical representation of weather
- [ ] Search by city: using search engine(Sphinx, Solr)
- [ ] Show weather forecast(weekly, monthly)
- [ ] Change background/theme based on weather conditions(Raining :umbrella: Cloudy :cloud: Sunny :sunny: Snow-fall :snowflake: like that)

### How do I test it?

Test on web: https://gentle-caverns-35717.herokuapp.com/

run tests: `rake test`
