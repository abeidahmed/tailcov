class ButtonComponentTest < ApplicationComponentTest
  def test_renders_content
    render_inline(Tailcov::ButtonComponent.new) { "content" }

    assert_text("content")
    assert_classes("px-4 py-2 text-sm leading-5")
    assert_classes("border-gray-300 bg-white text-gray-700")
  end

  def test_renders_sm_button
    render_inline(Tailcov::ButtonComponent.new(size: "sm")) { "content" }

    assert_classes("px-3 py-2 text-sm leading-4")
  end

  def test_renders_lg_button
    render_inline(Tailcov::ButtonComponent.new(size: "lg")) { "content" }

    assert_classes("px-4 py-2 text-base leading-6")
  end

  def test_renders_primary_button
    render_inline(Tailcov::ButtonComponent.new(variant: "primary")) { "content" }

    assert_classes("bg-indigo-600 text-white")
  end

  def test_renders_danger_button
    render_inline(Tailcov::ButtonComponent.new(variant: "danger")) { "content" }

    assert_classes("bg-red-600 text-white")
  end

  def test_renders_anchor_content
    render_inline(Tailcov::ButtonComponent.new(tag: :a)) { "content" }

    assert_selector("a")
  end

  def test_renders_other_attributes
    render_inline(Tailcov::ButtonComponent.new(href: "example.com")) { "content" }

    assert_selector("button[href='example.com']")
  end
end
