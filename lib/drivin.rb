# frozen_string_literal: true

require "zeitwerk"
require "logger"
loader = Zeitwerk::Loader.for_gem
loader.setup

module Drivin
  extend Logger
end

loader.eager_load
