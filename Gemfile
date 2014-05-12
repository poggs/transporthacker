source 'https://rubygems.org'

gem 'rails', '4.1.1'
gem 'pg'
gem 'sass-rails', '~> 4.0.1'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer',  platforms: :ruby

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bcrypt', '~> 3.1.2'
gem 'unicorn'


# Application-specific gems

gem 'bootstrap-sass', '~> 3.1.1'
gem 'font-awesome-sass'
gem 'leaflet-rails'
gem 'twitter-typeahead-rails'
gem 'handlebars_assets'


# Development

group :development do
  gem 'spring'
  gem 'capistrano-rails'
end


# Testing

group :development, :test do
  gem 'spring-commands-rspec'
  gem 'rspec-rails'
  gem 'guard'
  gem 'guard-rspec', '~> 4.2.7'
  gem 'rb-fsevent' if `uname` =~ /Darwin/
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end
