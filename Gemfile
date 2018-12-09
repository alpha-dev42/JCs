source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use sqlite3 as the database for Active Record
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Stripe gem for payment processing
gem 'stripe'

gem 'coffee-script-source', '1.8.0'

gem 'rake', '12.3.1'

# brakeman gem for security scanning
gem "brakeman"

# Pagination of Product Review Pages
gem 'will_paginate', '~> 3.1.0' 

# Gem for functional tests
gem 'rails-controller-testing'

# Dalli gem for MemCachier
gem 'dalli'
gem 'memcachier'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.8'
  gem "factory_bot_rails", "~>4.0"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
end

group :production do
  gem 'rails_12factor'
  gem 'pg', '0.21.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# Adds/creates user login
gem 'devise'
# Authorization rules gem
gem 'cancancan', '~> 1.10'
