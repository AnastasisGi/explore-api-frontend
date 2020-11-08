require 'json'

require './app/app'
require_relative 'support/rack_test'

RSpec.configure do |config|
  if config.files_to_run.one?
    config.default_formatter = "doc"
  end

  config.order = :random
end
