# Explore Front-end & API

### Quickstart
```sh
$ git clone git@github.com:dearshrewdwit/explore-api-frontend.git && cd explore-api-frontend
$ bundle install
$ bundle exec rackup
$ open http://localhost:9292
```

### Exploration
Open your browser console to see the front end logs and use your terminal logs to explore how this mini full stack app works.

### Tests
NB: there are no front-end specs and minimal controller specs. If you're interested see either [this project](https://github.com/dearshrewdwit/count) or [this one](https://github.com/dearshrewdwit/demo-news-summary) for example specs.
```sh
$ bundle exec rspec
```

### Architecture
Sinatra both serves the index page which loads the front-end app, and is responsible for the API.

## Weather API

A basic API that supports one endpoint.

---
#### Current Weather
- **Name:** `/api/current_weather`
- **Method:** `GET`
- **Description:** Returns data about the current weather

Example:
```sh
$ curl localhost:9292/api/current_weather
{
  "coord": {
    "lon": -0.13,
    "lat": 51.51
  },
  "weather": [
    {
      "id": 721,
      "main": "Haze",
      "description": "haze",
      "icon": "50n"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 282.81,
    "feels_like": 281.02,
    "temp_min": 282.04,
    "temp_max": 284.15,
    "pressure": 1019,
    "humidity": 93
  },
  "visibility": 1600,
  "wind": {
    "speed": 2.1,
    "deg": 80
  },
  "clouds": {
    "all": 75
  },
  "dt": 1604786059,
  "sys": {
    "type": 1,
    "id": 1414,
    "country": "GB",
    "sunrise": 1604732714,
    "sunset": 1604766195
  },
  "timezone": 0,
  "id": 2643743,
  "name": "London",
  "cod": 200
}

```

### Weather Data
This app's API is for demonstration purposes only. The `current_weather` endpoint reads from a file called `data.json`. The data in this file has been taken from response data from an example request to an external API - the [openweathermap](https://openweathermap.org) [current](https://openweathermap.org/current#data)  endpoint.
