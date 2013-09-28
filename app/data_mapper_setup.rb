env = ENV["RACK_ENV"] || "development"
DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require_relative './models/peep'
require_relative './models/users'

DataMapper.finalize
DataMapper.auto_upgrade!