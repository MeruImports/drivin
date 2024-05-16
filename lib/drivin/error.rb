# frozen_string_literal: true

module Drivin
  class Error < StandardError
    def self.for(_exception)
      new
    end
  end
end
