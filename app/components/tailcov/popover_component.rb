module Tailcov
  class PopoverComponent < ApplicationComponent
    DEFAULT_SIZE = :md
    DEFAULT_POSITION = :bottom_right

    SIZE_CLASSES = {
      :sm => "w-72",
      DEFAULT_SIZE => "w-80",
      :lg => "w-96"
    }.freeze

    POSITION_CLASSES = {
      DEFAULT_POSITION => "top-full left-0",
      :bottom_left => "top-full right-0",
      :top_right => "bottom-full left-0",
      :top_left => "bottom-full right-0",
      :right => "left-full top-0",
      :left => "right-full top-0"
    }.freeze

    def initialize(size: DEFAULT_SIZE, position: DEFAULT_POSITION, **options)
      @options = options

      @options[:tag] ||= :div
      @options[:classes] = class_names(
        options[:classes],
        "shadow-lg border border-gray-300 rounded-md p-3 absolute z-10",
        fetch_or_fallback(SIZE_CLASSES, given_value: size, fallback: DEFAULT_SIZE),
        fetch_or_fallback(POSITION_CLASSES, given_value: position, fallback: DEFAULT_POSITION),
      )
    end

    def call
      render(ApplicationComponent.new(**@options)) { content }
    end
  end
end
