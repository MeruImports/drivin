# frozen_string_literal: true

module Drivin
  module Resources
    module User
      extend Resource

      def self.create(params)
        post("api/external/v2/users", params)
      end
    end
  end
end
