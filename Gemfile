source 'https://rubygems.org'
ruby '2.2.4'

gem 'rails', '~> 4.2.5'

gem 'dalli'
gem 'haml'
gem 'jquery-rails'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'rails_12factor'
gem 'twitter'
gem 'twitter-text'

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap', '~> 3.3.6'
end

group :assets do
  gem 'sass-rails', '>= 4.0.3'
  gem 'uglifier'
end

group :production do
  gem 'puma'
end

group :development do
  gem 'spring'
  gem 'dotenv'
end

group :test do
  gem 'coveralls', require: false
  gem 'mocha', require: false
  gem 'rubocop'
  gem 'simplecov', require: false
  gem 'webmock'
end
