module Tailcov
  module Helpers
    module FetchOrFallback
      def fetch_or_fallback(hash_map, given_value:, fallback:)
        return unless given_value

        given_value = given_value.to_sym if given_value.is_a?(String)

        if hash_map.keys.include?(given_value)
          hash_map[given_value]
        else
          hash_map[fallback]
        end
      end
    end
  end
end
