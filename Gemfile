source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.3'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem "font-awesome-rails"
gem 'carrierwave'
gem 'mini_magick'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'simple_form'
gem 'ckeditor'
gem 'nested_form_fields'
gem 'ranked-model'

group :development, :test do
  gem 'pry'
  gem 'capistrano-passenger'
  gem 'capistrano-rails'
  gem "capistrano-rvm"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
