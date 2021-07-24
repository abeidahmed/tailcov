require "view_component"
Dir[File.join(File.dirname(__FILE__), "../../helpers/tailcov/**/*.rb")].each { |f| require f }

module Tailcov
  class ApplicationComponent < ViewComponent::Base
    include ClassNamesHelper

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
