require 'active_record'
require 'pp'
require 'logger'

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.default_timezone = :local

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: './db1.db'
)

class User < ActiveRecord::Base
end       