# frozen_string_literal: true

module Drivin
  module Logger
    attr_writer :logger

    def logger
      @logger ||= defined?(Rails) ? Rails.logger : ::Logger.new($stdout)
    end
  end
end
