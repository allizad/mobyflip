source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3' # rails 5 needs at least 2.2.2

gem 'rails', '~> 5.2.3' # teh rails

gem 'puma', '~> 3.12'

# Data

gem 'faker'
gem 'pg', '0.21.0' # postgres needs no introduction
gem 'redis', '~> 4.0'

# Assets

gem 'webpacker'#, '~> 3.5'
gem 'webpacker-react'
gem 'font-awesome-rails' # social icons and fonts
gem 'sassc-rails' # C implementation of Sass, for more speed
gem 'sprockets'
gem 'sprockets-es6' # remove for sprockets 4.x
gem 'uglifier'
gem 'vanilla-ujs'
gem 'turbolinks', '~> 5'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rollout'
end

group :development do
  gem 'better_errors' # awesome error reports
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
