# frozen_string_literal: true

module Drivin
  module Resources
    module Order
      module SchemaCode
        extend Resource

        def self.create(schema_code, params)
          post("api/external/v2/orders?schema_code=#{schema_code}", params)
        end
      end
    end
  end
end
