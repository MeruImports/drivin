# frozen_string_literal: true

module Drivin
  class Configuration
    attr_reader :base_url

    attr_accessor :api_key

    def initialize
      @livemode = false
      @base_url = 'https://external-qa.driv.in'
    end

    def livemode?
      @livemode
    end

    def livemode=(livemode)
      return unless [true, false].include?(livemode)

      @livemode = livemode
      livemode! if @livemode
    end

    private

    def livemode!
      @base_url = 'https://external.driv.in'
    end
  end
end
