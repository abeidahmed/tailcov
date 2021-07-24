module Tailcov
  class AvatarComponent < ApplicationComponent
    DEFAULT_SIZE = :md
    SIZE_OPTIONS = [:sm, DEFAULT_SIZE, :lg].freeze

    SIZE_CLASSES = {
      sm: "w-6 h-6",
      md: "w-8 h-8",
      lg: "w-10 h-10"
    }.freeze

    def initialize(src:, alt:, size: DEFAULT_SIZE, circular: true, **options)
      @options = options
      @options[:tag] ||= :img
      @options[:src] = src
      @options[:alt] = alt

      @options[:classes] = class_names(
        options[:classes],
        SIZE_CLASSES[fetch_or_fallback(SIZE_CLASSES.keys, given_value: size, fallback: DEFAULT_SIZE)],
        "inline-block",
        rounded: !circular,
        "rounded-full": circular,
      )
    end

    def call
      render(ApplicationComponent.new(**@options))
    end
  end
end
