ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require 'mocha/setup'
require 'minitest/rails/capybara'
require 'test_support'

# Uncomment for awesome colorful output
# require 'minitest/pride'

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
end
