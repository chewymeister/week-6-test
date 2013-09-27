require 'sinatra/base'
require 'data_mapper'

require_relative 'data_mapper_setup'

require_relative './controllers/index'
require_relative './controllers/peeps'

class Chitter < Sinatra::Base
set :views, "#{File.dirname(__FILE__)}/views"

enable :sessions
set :session_secret, 'super secret'


end