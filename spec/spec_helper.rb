require_relative './features/web_helpers'

ENV['ENVIRONMENT'] = 'development'

require File.join(File.dirname(__FILE__), '..', 'app/controllers/application_controller.rb')
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'simplecov'

Capybara.app = ApplicationController

ApplicationController.set :show_exceptions, false # this stops rspec running sinatra exceptions, can still see these in manual tests

SimpleCov.start

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
