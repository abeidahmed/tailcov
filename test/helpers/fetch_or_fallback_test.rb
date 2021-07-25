require "test_helper"

class FetchOrFallbackTest < Minitest::Test
  include Tailcov::Helpers::FetchOrFallback

  def setup
    @hash = {
      sm: "small",
      md: "medium",
      lg: "large"
    }
  end

  def test_returns_correct_value
    assert_equal fetch_or_fallback(@hash, given_value: "sm", fallback: :md), "small"
  end

  def test_returns_fallback_value
    assert_equal fetch_or_fallback(@hash, given_value: "invalid", fallback: :md), "medium"
  end

  def test_returns_nil_if_given_value_is_nil
    assert_nil fetch_or_fallback(@hash, given_value: nil, fallback: :md)
  end
end
