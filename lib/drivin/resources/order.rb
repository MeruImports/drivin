# frozen_string_literal: true

module Drivin
  module Resources
    module Order
      extend Resource

      def self.destroy(order_code)
        delete("api/external/v2/orders/#{order_code}")
      end
    end
  end
end
