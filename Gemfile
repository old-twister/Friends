source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"
gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.6.5"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem 'brakeman', '~> 5.3', '>= 5.3.1'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rails_best_practices', '~> 1.23', '>= 1.23.2'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
end

group :development do
  gem 'annotate', '~> 3.2'
  gem "web-console"
  gem 'faker', '~> 2.23'
  gem 'hotwire-livereload'
end

