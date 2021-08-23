# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'capybara'
gem 'pg'
gem 'rspec'
gem 'sinatra'
gem 'sinatra-contrib'

gem 'simplecov', require: false, group: :test
group :development, :test do
  gem "rubocop", "0.79.0"
  gem 'rack'
end
