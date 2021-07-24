module Tailcov
  class AvatarComponentStories < ViewComponent::Storybook::Stories
    story(:avatar) do
      controls do
        text(:src, "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=facearea&w=144&h=144&q=80&facepad=2")
        text(:alt, "Image alt")
        select(:size, AvatarComponent::SIZE_OPTIONS, AvatarComponent::DEFAULT_SIZE)
        circular true
      end
    end
  end
end
