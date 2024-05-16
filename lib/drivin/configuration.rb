# frozen_string_literal: true

module Drivin
  class Configuration
    attr_reader :base_url

    attr_accessor :api_key

    def initialize
      @base_url = 'https://api.driv.in'
    end
  end
end
