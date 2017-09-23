source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'coffee-rails', '~> 4.2'
gem 'country_select'
gem 'haml-rails'
gem 'simple_form'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'open-weather'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.4'
gem 'sass-rails', '~> 5.0'
gem 'therubyracer', platform: :ruby
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'better_errors'
  gem 'html2haml'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails_layout'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'factory_girl_rails'
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
  gem 'mocha'
  gem 'launchy'
end
