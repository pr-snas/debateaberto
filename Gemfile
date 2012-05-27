source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'sqlite3', group: :development
gem 'devise'
gem 'cancan'
gem 'rspec-rails', group: [:development, :test]

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'guard-rspec'
end

group :production do
  gem 'thin'
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails'
  gem 'compass_twitter_bootstrap'
end

gem 'jquery-rails'
