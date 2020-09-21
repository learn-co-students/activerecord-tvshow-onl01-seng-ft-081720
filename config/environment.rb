require "bundler/setup"
require 'yaml'
require 'active_record'
# require_relative '../db/migrate/001_create_shows.rb'
# require_relative '../db/migrate/002_add_season_to_shows.rb'
# require_relative '../app/models/show.rb'

Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}

DB = ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: 'db/tvshows.db'
})

if ENV["ACTIVE_RECORD_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end


# require_all 'app'