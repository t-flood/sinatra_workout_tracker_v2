require 'bundler'

Bundler.require

env = ENV.fetch("RACK_ENV", "development")
ActiveRecord::Base.establish_connection(env.to_sym)
ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'app'
