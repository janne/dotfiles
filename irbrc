# Enable Wirble
require 'rubygems'
require 'wirble'
Wirble.init
#Wirble.colorize

# Log to STDOUT if in Rails
require 'logger'
#RAILS_DEFAULT_LOGGER = Logger.new(STDOUT) if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
