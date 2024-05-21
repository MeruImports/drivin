# frozen_string_literal: true

module Drivin
  module Resources
    module Client
      extend Resource

      def self.create(params = EMPTY_PARAMS.dup)
        post('api/external/v2/clients', params)
      end
    end
  end
end
