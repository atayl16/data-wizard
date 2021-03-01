source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'activerecord-import'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.5.0'
gem 'bootstrap_form', '~> 4.0'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'faker', git: 'https://github.com/faker-ruby/faker.git', branch: 'master'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4', '>= 5.2.4.3'
gem 'rubocop-faker'
gem 'rubyzip'
gem 'sassc', '~>2.1.0'
gem 'sass-rails', '~> 5.0'
gem 'seedbank'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate-bootstrap4'
gem 'newrelic_rpm'

group :development, :test do
  gem 'active_record_query_trace'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'database_cleaner'
  gem 'rspec-rails'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  gem 'rubocop-rails', require: false
end

group :test do
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
