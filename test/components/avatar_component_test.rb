class AvatarComponentTest < ApplicationComponentTest
  def test_renders_content
    render_inline(Tailcov::AvatarComponent.new(src: "example.com", alt: "Example"))

    assert_selector("img[src='example.com']")
    assert_selector("img[alt='Example']")
  end

  def test_defaults_to_circular_avatar
    render_inline(Tailcov::AvatarComponent.new(src: "example.com", alt: "Example"))

    assert_selector("img.rounded-full")
  end

  def test_squared_avatar
    render_inline(Tailcov::AvatarComponent.new(src: "example.com", alt: "Example", circular: false))

    assert_selector("img.rounded")
  end

  def test_defaults_to_medium_avatar
    render_inline(Tailcov::AvatarComponent.new(src: "example.com", alt: "Example"))

    assert_classes("w-9 h-9")
  end

  def test_xss_small_avatar
    render_inline(Tailcov::AvatarComponent.new(src: "example.com", alt: "Example", size: "xxs"))

    assert_classes("w-6 h-6")
  end

  def test_xs_small_avatar
    render_inline(Tailcov::AvatarComponent.new(src: "example.com", alt: "Example", size: "xs"))

    assert_classes("w-7 h-7")
  end

  def test_small_avatar
    render_inline(Tailcov::AvatarComponent.new(src: "example.com", alt: "Example", size: "sm"))

    assert_classes("w-8 h-8")
  end

  def test_large_avatar
    render_inline(Tailcov::AvatarComponent.new(src: "example.com", alt: "Example", size: "lg"))

    assert_classes("w-10 h-10")
  end

  def test_defaults_to_medium_if_unknown_size
    render_inline(Tailcov::AvatarComponent.new(src: "example.com", alt: "Example", size: "unknown"))

    assert_classes("w-9 h-9")
  end
end
