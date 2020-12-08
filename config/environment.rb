require 'bundler'

Bundler.require

ActiveRecord::Base.establish_connection(:development)

ActiveRecord::Base.logger = Logger.new(STDOUT)
require_all 'app'
