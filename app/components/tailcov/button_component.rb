module Tailcov
  class ButtonComponent < ApplicationComponent
    DEFAULT_VARIANT = :default
    DEFAULT_SIZE = :md

    VARIANT_CLASSES = {
      DEFAULT_VARIANT => "border-gray-300 bg-white text-gray-700 hover:bg-gray-50",
      :primary => "bg-indigo-600 text-white hover:bg-indigo-700",
      :danger => "bg-red-600 text-white hover:bg-red-700"
    }.freeze

    SIZE_CLASSES = {
      :sm => "px-3 py-2 text-sm leading-4",
      DEFAULT_SIZE => "px-4 py-2 text-sm leading-5",
      :lg => "px-4 py-2 text-base leading-6"
    }.freeze

    def initialize(variant: DEFAULT_VARIANT, size: DEFAULT_SIZE, **options)
      @options = options
      @options[:tag] ||= :button
      @options[:classes] = class_names(
        options[:classes],
        "inline-flex justify-center rounded-md border border-transparent shadow-sm font-medium
        transition duration-100 ease-in-out",
        fetch_or_fallback(SIZE_CLASSES, given_value: size, fallback: DEFAULT_SIZE),
        fetch_or_fallback(VARIANT_CLASSES, given_value: variant, fallback: DEFAULT_VARIANT),
      )
    end

    def call
      render(ApplicationComponent.new(**@options)) { content }
    end
  end
end
