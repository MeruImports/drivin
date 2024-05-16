# frozen_string_literal: true

module Drivin
  module Connection
    def connection
      @connection ||= Faraday.new(
        url: Drivin.base_url,
        headers: headers
      )
    end

    def headers
      {
        'Content-Type' => 'application/json',
        'X-API-Key' => Drivin.api_key
      }
    end
  end
end
