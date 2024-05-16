# frozen_string_literal: true

module Drivin
  class Error < StandardError
    def self.for(e)
      new
    end
  end
end
