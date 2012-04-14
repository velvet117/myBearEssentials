source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'uglifier'
  gem 'therubyracer'
end

gem 'omniauth-facebook'
gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
  gem 'sqlite3'
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'simplecov', :require => false, :group => :test
  gem 'factory_girl', '~> 3.1.0'
  # Pretty printed test output
  gem 'turn', '< 0.8.3', :require => false
end

group :production do
  gem 'pg'
end
