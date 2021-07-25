module Tailcov
  class Engine < ::Rails::Engine
    isolate_namespace Tailcov

    config.autoload_once_paths = %W[#{root}/app/components]

    initializer "tailcov.assets" do |app|
      app.config.assets.precompile += %w[tailcov] if app.config.respond_to?(:assets)
    end
  end
end
