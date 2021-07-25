module Tailcov
  class AvatarComponent < ApplicationComponent
    DEFAULT_SIZE = :md

    SIZE_CLASSES = {
      :xxs => "w-6 h-6",
      :xs => "w-7 h-7",
      :sm => "w-8 h-8",
      DEFAULT_SIZE => "w-9 h-9",
      :lg => "w-10 h-10"
    }.freeze

    def initialize(src:, alt:, size: DEFAULT_SIZE, circular: true, **options)
      @options = options
      @options[:tag] ||= :img
      @options[:src] = src
      @options[:alt] = alt

      @options[:classes] = class_names(
        options[:classes],
        fetch_or_fallback(SIZE_CLASSES, given_value: size, fallback: DEFAULT_SIZE),
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
