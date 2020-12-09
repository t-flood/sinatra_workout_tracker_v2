require 'bundler'

Bundler.require

env = ENV.fetch("RACK_ENV", "development")
ActiveRecord::Base.establish_connection(env)
ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'app'
