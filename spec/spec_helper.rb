$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'action_view'
require 'flash_rails_messages'
require 'rails/all'
require 'simplecov'

SimpleCov.start do
  minimum_coverage 90
end