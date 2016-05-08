module Openweather
  class Client
    class ServerError < Exception; end

    def initialize
      @http_client = HTTP::Client.new("api.openweathermap.org")
      @api_key = "dd7073d18e3085d0300b6678615d904d"
    end

    def get(location : String)
      response = @http_client.get("/data/2.5/weather?q=#{location}&appid=#{@api_key}")
      proccess_response(response)
    end

    private def proccess_response(response : HTTP::Client::Response)
      case response.status_code
      when 200..299
        # For cases when "status" is one of the following:
        # ZERO_RESULTS
        # OK
        return SuccessResponse.from_json(response.body)

        # For cases when "status" is one of the following:
        # OVER_QUERY_LIMIT
        # REQUEST_DENIED
        # INVALID_REQUEST
        raise Client::ServerError.new(ErrorResponse.from_json(response.body).message)
      when 400
        raise Client::ServerError.new("400: Server Not Found")
      when 500
        raise Client::ServerError.new("500: Internal Server Error")
      when 502
        raise Client::ServerError.new("502: Bad Gateway")
      when 503
        raise Client::ServerError.new("503: Service Unavailable")
      when 504
        raise Client::ServerError.new("504: Gateway Timeout")
      else
        raise Client::ServerError.new("Server returned error #{response.status_code}")
      end
    end
  end
end
