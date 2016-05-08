module Openweather
  class Coord
    JSON.mapping({
      lat: Float64,
      lon: Float64
    })
  end

  class Weather
    JSON.mapping({
      id: Int64,
      main: String,
      description: String,
      icon: String
    })
  end

  class Main
    JSON.mapping({
      temp: Float64,
      pressure: Float64,
      humidity: Float64,
      temp_min: Float64,
      temp_max: Float64,
      sea_level: Float64,
      grnd_level: Float64
    })
  end

  class Wind
    JSON.mapping({
      speed: Float64,
      deg: Float64
    })
  end

  class Cloud
    JSON.mapping({ all: Int32 })
  end

  class Sys
    JSON.mapping({
      message: Float64,
      country: String,
      sunrise: Int64,
      sunset: Int64
    })
  end
end
