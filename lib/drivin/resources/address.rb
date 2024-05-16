# frozen_string_literal: true

module Drivin
  module Resources
    module Address
      extend Resource

      def self.create(params)
        post('api/external/v2/addresses', params)
      end

      def self.get
        get('api/external/v2/addresses')
      end
    end
  end
end
