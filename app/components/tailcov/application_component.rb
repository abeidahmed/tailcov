require "view_component"
require "tailcov/helpers"

module Tailcov
  class ApplicationComponent < ViewComponent::Base
    include Helpers::ClassNames

    def initialize(tag: nil, classes: nil, **options)
      @tag = tag
      @classes = classes
      @options = options
    end

    def call
      content_tag(@tag, content, class: @classes, **@options) if @tag
    end
  end
end
