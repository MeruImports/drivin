# frozen_string_literal: true

module Drivin
  module Connection
    def connection
      @connection ||= Faraday.new(url: Drivin.base_url, headers: headers) do |faraday|
        faraday.response :raise_error
        faraday.request :json
        faraday.response :json
        faraday.response :logger, Drivin.logger do |logger|
          logger.filter(/(?i)(X-API-Key)([^&]+)/, '\1: [FILTERED]')
        end
      end
    end

    def headers
      {
        'Content-Type' => 'application/json',
        'X-API-Key' => Drivin.api_key
      }
    end
  end
end
