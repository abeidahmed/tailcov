require "test_helper"

class ClassNamesHelperTest < Minitest::Test
  include Tailcov::Helpers::ClassNames

  def test_returns_combined_class_if_hash
    classes = class_names(
      "large medium": true,
      small: false,
    )

    assert_equal class_names(classes), "large medium"
  end

  def test_returns_combined_class_if_array
    classes = class_names(
      %w[large medium],
      small: false,
    )

    assert_equal class_names(classes), "large medium"
  end

  def test_returns_combined_class_if_string
    classes = class_names(
      "large medium",
      "small",
    )

    assert_equal class_names(classes), "large medium small"
  end
end
