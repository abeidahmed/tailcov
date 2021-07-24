module Tailcov
  class ButtonComponent < ApplicationComponent
    DEFAULT_VARIANT = "default".freeze
    VARIANT_OPTIONS = [DEFAULT_VARIANT, "primary", "danger"].freeze

    DEFAULT_SIZE = "md".freeze
    SIZE_OPTIONS = ["sm", DEFAULT_SIZE, "lg"].freeze

    def initialize(variant: DEFAULT_VARIANT, size: DEFAULT_SIZE, **options)
      @options = options
      @options[:tag] ||= :button
      @options[:classes] = class_names(
        options[:classes],
        "inline-flex justify-center rounded-md border border-transparent shadow-sm font-medium
        focus:outline-none focus:ring-2 focus:ring-offset-2 transition duration-100 ease-in-out",
        "px-3 py-2 text-sm leading-4": size == "sm",
        "px-4 py-2 text-sm leading-5": size == "md",
        "px-4 py-2 text-base leading-6": size == "lg",
        "border-gray-300 bg-white text-gray-700 hover:bg-gray-50 focus:ring-indigo-500": variant == "default",
        "bg-indigo-600 text-white hover:bg-indigo-700 focus:ring-indigo-500": variant == "primary",
        "bg-red-600 text-white hover:bg-red-700 focus:ring-red-500": variant == "danger",
      )
    end

    def call
      render(ApplicationComponent.new(**@options)) { content }
    end
  end
end
