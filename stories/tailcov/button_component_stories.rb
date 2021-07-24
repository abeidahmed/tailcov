require_relative "../../app/components/tailcov/application_component"
require_relative "../../app/components/tailcov/button_component"

module Tailcov
  class ButtonComponentStories < ViewComponent::Storybook::Stories
    layout "application"

    story(:default) do
      controls do
        text(:button_text, "Ok")
      end
    end
  end
end
