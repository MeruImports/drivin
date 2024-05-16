# frozen_string_literal: true

module Drivin
  module Response
    def response
      yield.body
    rescue Faraday::Error => e
      raise Error.for(e)
    end
  end
end
