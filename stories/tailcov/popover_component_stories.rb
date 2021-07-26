module Tailcov
  class PopoverComponentStories < ViewComponent::Storybook::Stories
    layout "dropdown"

    story(:popover) do
      controls do
        select(:size, PopoverComponent::SIZE_CLASSES.keys, PopoverComponent::DEFAULT_SIZE)
        select(:position, PopoverComponent::POSITION_CLASSES.keys, PopoverComponent::DEFAULT_POSITION)
      end

      content do
        "This is a cool popover!"
      end
    end
  end
end
