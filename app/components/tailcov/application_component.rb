require "view_component"
Dir[File.join(File.dirname(__FILE__), "../../helpers/tailcov/**/*.rb")].each { |f| require f }

module Tailcov
  class ApplicationComponent < ViewComponent::Base
    include ClassNamesHelper
  end
end
