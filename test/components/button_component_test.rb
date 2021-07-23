require "test_helper"

class ButtonComponentTest < ViewComponent::TestCase
  def test_renders_content
    render_inline(Tailcov::ButtonComponent.new) { "content" }

    assert_text("content")
  end
end
