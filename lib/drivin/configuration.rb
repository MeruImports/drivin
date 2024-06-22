# frozen_string_literal: true

module Drivin
  class Configuration
    attr_reader :base_url

    attr_accessor :api_key

    QA_BASE_URL = 'https://external-qa.driv.in'
    private_constant :QA_BASE_URL

    PROD_BASE_URL = 'https://external.driv.in'
    private_constant :PROD_BASE_URL

    def initialize
      @livemode = false
      @base_url = QA_BASE_URL
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
      @base_url = PROD_BASE_URL
    end
  end
end
