source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.5'

gem 'bootstrap-sass', '2.3.2.0'
gem 'sprockets', '2.11.0'

group :development, :test do
	gem 'sqlite3'
	gem 'rspec-rails', '2.13.1'
	gem 'therubyracer', :platforms => :ruby
end

group :test do
	gem 'selenium-webdriver'
	gem 'capybara'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# add any new production gems that you require here
group :production do
	# add DBMS that is being used on production server
	gem 'rails_12factor', '0.0.2'
end