module Tailcov
  class ButtonComponent < ApplicationComponent
    DEFAULT_VARIANT = :default
    VARIANT_OPTIONS = [DEFAULT_VARIANT, :primary, :danger].freeze

    DEFAULT_SIZE = :md
    SIZE_OPTIONS = [:sm, DEFAULT_SIZE, :lg].freeze

    VARIANT_CLASSES = {
      default: "border-gray-300 bg-white text-gray-700 hover:bg-gray-50 focus:ring-indigo-500",
      primary: "bg-indigo-600 text-white hover:bg-indigo-700 focus:ring-indigo-500",
      danger: "bg-red-600 text-white hover:bg-red-700 focus:ring-red-500"
    }.freeze

    SIZE_CLASSES = {
      sm: "px-3 py-2 text-sm leading-4",
      md: "px-4 py-2 text-sm leading-5",
      lg: "px-4 py-2 text-base leading-6"
    }.freeze

    def initialize(variant: DEFAULT_VARIANT, size: DEFAULT_SIZE, **options)
      @options = options
      @options[:tag] ||= :button
      @options[:classes] = class_names(
        options[:classes],
        "inline-flex justify-center rounded-md border border-transparent shadow-sm font-medium
        focus:outline-none focus:ring-2 focus:ring-offset-2 transition duration-100 ease-in-out",
        SIZE_CLASSES[fetch_or_fallback(SIZE_CLASSES.keys, given_value: size, fallback: DEFAULT_SIZE)],
        VARIANT_CLASSES[fetch_or_fallback(VARIANT_CLASSES.keys, given_value: variant, fallback: DEFAULT_VARIANT)],
      )
    end

    def call
      render(ApplicationComponent.new(**@options)) { content }
    end
  end
end
