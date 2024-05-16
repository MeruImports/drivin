# frozen_string_literal: true

module Drivin
  module Resources
    module Order
      extend Resource

      def self.create_by_schema_code(schema_code, params)
        post("api/external/v2/orders?schema_code=#{schema_code}", params)
      end

      def self.create_by_scenario_token(scenario_token, params)
        post("api/external/v2/orders?token=#{scenario_token}", params)
      end

      def self.get_by_token(token)
        get("api/external/v2/orders?token=#{token}")
      end

      def self.delete(order_code)
        delete("api/external/v2/orders/#{order_code}")
      end

      def self.delete_by_scenario_token(order_code, scenario_token)
        delete("api/external/v2/orders/#{order_code}?token=#{scenario_token}")
      end
    end
  end
end
