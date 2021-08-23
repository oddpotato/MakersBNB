<h1>What is this?</h1>

This repo is a template for creating local environments for web apps. The following steps will be needed to complete installation:

1. Install gems with 'bundle install'
2. Initialize rspec with 'rspec --init'

<i>NOTE - You will need to change the spec_helper line Capybara.app = BookmarkManager to whichever name is relevant to your project.</i>

To make a new test database you will need to do the following on the repo:

1. Edit the 'setup test database' file to contain the correct database name

2. Add this to your spec helper file, before your required gem list

        require_relative './setup_test_database'

        ENV['ENVIRONMENT'] = 'test'

        RSpec.configure do |config|
          config.before(:each) do
            setup_test_database
          end
        end


3. Remember to put any sql used to create tables in db/migrations

4. Update the App name in config.ru (run <appname>)
