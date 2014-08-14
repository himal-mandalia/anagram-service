ENV['RACK_ENV'] = 'test'
require 'rack/test'
require 'json'
require_relative '../anagram_service'
require_relative '../models/anagram'
require_relative 'support/service_helpers'

RSpec.configure do |config|
  config.include ServiceHelpers
end
