# frozen_string_literal: true

require 'logger'
require 'forwardable'

require 'faraday'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

module Drivin
  extend Logger
  extend Connection

  include Resources

  EMPTY_PARAMS = {}.freeze

  def self.configure
    config.tap do |instance|
      yield instance if block_given?
    end
  end

  def self.config
    @config ||= Configuration.new
  end

  class << self
    extend Forwardable

    def_delegators :config, :base_url, :api_key
  end
end

loader.eager_load
