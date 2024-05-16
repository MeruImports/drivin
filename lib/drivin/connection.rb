# frozen_string_literal: true

module Drivin
  module Connection
    def connection
      @connection ||= Faraday.new(url: "https://api.driv.in")
    end
  end
end
