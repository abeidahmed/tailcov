source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gemspec

gem "bootsnap", ">= 1.4.2", require: false
gem "view_component", path: ENV["VIEW_COMPONENT_PATH"] if ENV["VIEW_COMPONENT_PATH"]
gem "view_component_storybook"

group :development do
  gem "rubocop", "~> 1.18", ">= 1.18.4"
  gem "sqlite3"
end

group :development, :test do
  gem "byebug"
  gem "capybara", "~> 3.35", ">= 3.35.3"
end
