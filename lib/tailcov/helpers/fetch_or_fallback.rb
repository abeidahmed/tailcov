module Tailcov
  module Helpers
    module FetchOrFallback
      def fetch_or_fallback(allowed_values, given_value:, fallback: nil)
        return unless given_value

        given_value = given_value.to_sym
        if allowed_values.include?(given_value)
          given_value
        else
          fallback
        end
      end
    end
  end
end
