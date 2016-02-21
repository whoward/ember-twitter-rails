ruby '2.3.0'

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.beta2', '< 5.1'

# Use Puma as the app server
gem 'puma'

# Postgres database
gem 'pg'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'active_model_serializers', '0.10.0.rc4'

gem 'rack-cors'

group :development, :test do
  gem 'pry-byebug'
end

group :test do
  gem 'rspec-rails'
  gem 'rspec-its'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

group :development do
end

group :production do
  gem 'rails_12factor'
end
