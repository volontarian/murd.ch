source 'https://rubygems.org'

gem 'home_page', github: 'home-page/home_page' # '~> 0.0.6', path: '../../home_page/home_page'
gem 'home_page_blog', github: 'home-page/home_page_blog' # '~> 0.0.2', path: '../../home_page/home_page_blog'
gem 'home_page_music', github: 'home-page/home_page_music' #'~> 0.0.2', path: '../../home_page/home_page_music'

gem 'devise', github: 'plataformatec/devise'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  gem 'mysql2', '~> 0.3.13'
  gem 'linecache', '0.46', platforms: :mri_18
  gem 'capistrano', '~> 2.15.5', require: false
  gem 'capistrano_colors', '~> 0.5.5', require: false
  gem 'capistrano-ext', '~> 1.2.1', require: false
  gem 'net-ssh', '2.7.0'
  gem 'yard', '~> 0.7', require: false
end

group :test do
  gem 'cucumber-rails', '~> 1.3.0', require: false
  gem 'rspec-instafail', '~> 0.2.4', require: false
  gem 'webmock', '~> 1.8.11', require: false
  gem 'simplecov', '~> 0.7.1', require: false
end

group :production do
  gem 'pg', '~> 0.17.1'
  gem 'unicorn', '~> 4.8.3'
end