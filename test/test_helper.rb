ENV["RAILS_ENV"] = "test"

require "minitest/autorun"
require "rails"
require "rails/test_help"
require "view_component/test_helpers"
require "view_component/test_case"

require_relative "../dummy/config/environment"

Dir[File.join(File.dirname(__FILE__), "../app/components/tailcov/**/*.rb")].each { |f| require f }
