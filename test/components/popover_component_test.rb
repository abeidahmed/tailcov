class PopoverComponentTest < ApplicationComponentTest
  def test_renders
    render_inline(Tailcov::PopoverComponent.new) { "content" }

    assert_text("content")
  end

  def test_default_position
    render_inline(Tailcov::PopoverComponent.new) { "content" }

    assert_classes("top-full left-0")
  end

  def test_default_size
    render_inline(Tailcov::PopoverComponent.new) { "content" }

    assert_classes("w-80")
  end

  def test_bottom_left_position
    render_inline(Tailcov::PopoverComponent.new(position: "bottom_left")) { "content" }

    assert_classes("top-full right-0")
  end

  def test_top_right_position
    render_inline(Tailcov::PopoverComponent.new(position: "top_right")) { "content" }

    assert_classes("bottom-full left-0")
  end

  def test_top_left_position
    render_inline(Tailcov::PopoverComponent.new(position: "top_left")) { "content" }

    assert_classes("bottom-full right-0")
  end

  def test_right_position
    render_inline(Tailcov::PopoverComponent.new(position: "right")) { "content" }

    assert_classes("left-full top-0")
  end

  def test_left_position
    render_inline(Tailcov::PopoverComponent.new(position: "left")) { "content" }

    assert_classes("right-full top-0")
  end

  def test_small_size
    render_inline(Tailcov::PopoverComponent.new(size: "sm")) { "content" }

    assert_classes("w-72")
  end

  def test_large_size
    render_inline(Tailcov::PopoverComponent.new(size: "lg")) { "content" }

    assert_classes("w-96")
  end

  def test_renders_default_size_when_invalid_size
    render_inline(Tailcov::PopoverComponent.new(size: "invalid")) { "content" }

    assert_classes("w-80")
  end

  def test_renders_default_position_when_invalid_position
    render_inline(Tailcov::PopoverComponent.new(position: "invalid")) { "content" }

    assert_classes("top-full left-0")
  end
end
