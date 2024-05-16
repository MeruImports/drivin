# frozen_string_literal: true

module Drivin
  module Resources
    module User
      extend Resource

      def self.create(params)
        post('api/external/v2/users', params)
      end

      def self.all(params = EMPTY_PARAMS.dup)
        get('api/external/v2/users', params)
      end
    end
  end
end
