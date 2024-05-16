# frozen_string_literal: true

module Drivin
  module Logger
    def logger
      @logger ||= ::Logger.new($stdout)
    end
  end
end
