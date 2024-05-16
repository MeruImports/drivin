# frozen_string_literal: true

module Drivin
  module Resource
    def post(url, params = EMPTY_PARAMS.dup)
      response { Drivin.connection.post(url, params) }
    end

    def put(url, params = EMPTY_PARAMS.dup)
      response { Drivin.connection.put(url, params) }
    end

    def delete(url, params = EMPTY_PARAMS.dup)
      response { Drivin.connection.delete(url, params) }
    end

    def get(url, params = EMPTY_PARAMS.dup)
      response { Drivin.connection.get(url, params) }
    end

    def response
      yield.body
    rescue Faraday::Error => e
      raise Error.for(e)
    end
  end
end
