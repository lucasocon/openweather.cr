module Openweather
  class ErrorResponse
    JSON.mapping({
      message: String
    })
  end

  class SuccessResponse
    JSON.mapping({
      id: Int64,
      name: String,
      coord: Coord,
      weather: Array(Weather),
      base: String,
      main: Main,
      wind: Wind,
      clouds: Cloud,
      sys: Sys
    })
  end
end
