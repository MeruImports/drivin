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
      response = exception.response.with_indifferent_access
      message = response.dig('body', 'response', 'description')
      new(message, exception.response, response['status'])
    end
  end
end
