require_relative "../../app/components/tailcov/application_component"
require_relative "../../app/components/tailcov/button_component"

module Tailcov
  class ButtonComponentStories < ViewComponent::Storybook::Stories
    story(:default) do
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
