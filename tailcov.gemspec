require_relative "lib/tailcov/version" # rubocop:disable Gemspec/RequiredRubyVersion

Gem::Specification.new do |spec|
  spec.name        = "tailcov"
  spec.version     = Tailcov::VERSION
  spec.authors     = ["abeidahmed"]
  spec.email       = ["abeidahmed92@gmail.com"]
  spec.homepage    = "https://github.com/abeidahmed"
  spec.summary     = "My summary"
  spec.description = "My description"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/abeidahmed"
  spec.metadata["changelog_uri"] = "https://github.com/abeidahmed/changelog.md"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4"
  spec.add_dependency "view_component", [">= 2.0.0", "< 3.0"]

  spec.add_development_dependency "byebug"
  spec.add_development_dependency "capybara", "~> 3.35", ">= 3.35.3"
  spec.add_development_dependency "rubocop", "~> 1.18", ">= 1.18.4"
end
