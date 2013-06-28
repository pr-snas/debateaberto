source 'https://rubygems.org'

ruby "1.9.3"

gem 'rails', '3.2.3'
gem 'sqlite3', group: :development
gem 'devise'
gem 'omniauth-facebook'
gem 'cancan'
gem 'rspec-rails', group: [:development, :test]
gem 'faye'
gem 'private_pub'
gem 'nokogiri'
gem 'heroku'

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
  gem 'handlebars_assets'
end

gem 'jquery-rails'
