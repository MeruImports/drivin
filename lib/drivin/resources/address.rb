# frozen_string_literal: true

module Drivin
  module Resources
    module Address
      extend Resource

      def self.create(params = EMPTY_PARAMS.dup)
        post('api/external/v2/addresses', params)
      end

      def self.all(params = EMPTY_PARAMS.dup)
        get('api/external/v2/addresses', params)
      end
    end
  end
end
