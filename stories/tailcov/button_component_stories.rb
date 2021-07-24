module Tailcov
  class ButtonComponentStories < ViewComponent::Storybook::Stories
    story(:solid) do
      controls do
        select(:variant, ButtonComponent::VARIANT_OPTIONS, ButtonComponent::DEFAULT_VARIANT)
        select(:size, ButtonComponent::SIZE_OPTIONS, ButtonComponent::DEFAULT_SIZE)
      end

      content do
        "Click me"
      end
    end
  end
end
