# frozen_string_literal: true

module Drivin
  class Error < StandardError
    attr_reader :response, :http_code

    def initialize(message, response, http_code)
      @response = response
      @http_code = http_code
      super(message)
    end

    def self.for(exception)
      response = exception.response
      http_body = response[:body]
      message = http_body.dig('response', 'description')
      new(message, response, response[:status])
    end
  end
end
