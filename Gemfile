source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
 ruby '2.1.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
#paperclip used to upload images and documents
gem "paperclip"
#devise used for authentication 
gem 'devise'
# bootstrap and autoprefixer-rails gems for css 
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
# progress line for when page is loading
gem 'nprogress-rails'
# using puma server
gem 'puma'
group :development do
gem 'capistrano'
gem 'capistrano-rails'
gem 'capistrano3-puma', require: false
gem 'capistrano-bundler', require: false
gem 'capistrano-rvm'
end
# calendar management of events
# gem "simple_calendar"
# mailform for contact 
gem "mail_form"
# simpleform for forms
gem "simple_form"
# bundle exec rake doc:rails generates the API under doc/api.
gem 'heroku-deflater', :group => :production
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  #use foreman for heroku mailer
  gem 'foreman'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  group :production do
  	gem 'rails_12factor'
  end
end

