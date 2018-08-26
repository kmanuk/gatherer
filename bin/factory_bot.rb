# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

begin
  DatabaseCleaner.start
  FactoryBot.lint(traits: true)
ensure
  DatabaseCleaner.clean
end
