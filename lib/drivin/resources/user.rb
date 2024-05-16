# frozen_string_literal: true

module Drivin
  module Resources
    module User
      extend Resource

      def self.create(params)
        post('api/external/v2/users', params)
      end

      def self.get
        get('api/external/v2/users')
      end

      def self.get_by_role(role_name)
        get("api/external/v2/users?role_name=#{role_name}")
      end
    end
  end
end
