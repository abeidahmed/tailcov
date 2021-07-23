module Tailcov
  class Engine < ::Rails::Engine
    isolate_namespace Tailcov

    config.autoload_once_paths = %W[#{root}/app/components]
  end
end
