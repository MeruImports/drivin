# frozen_string_literal: true

module Drivin
  module Resources
    module Order
      module ScenarioToken
        extend Resource

        def self.create(scenario_token, params = EMPTY_PARAMS.dup)
          post("api/external/v2/orders?token=#{scenario_token}", params)
        end

        def self.all(token)
          get("api/external/v2/orders?token=#{token}")
        end

        def self.destroy(order_code, scenario_token)
          delete("api/external/v2/orders/#{order_code}?token=#{scenario_token}")
        end
      end
    end
  end
end
