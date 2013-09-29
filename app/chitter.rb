require 'sinatra/base'
require 'data_mapper'
require 'rack-flash'
require_relative 'data_mapper_setup'

require_relative './controllers/index'
require_relative './controllers/peeps'
require_relative './controllers/users'
require_relative './controllers/sessions'

require_relative './models/peep'
require_relative './models/users'


class Chitter < Sinatra::Base
  use Rack::Flash
	use Rack::MethodOverride

  set :views, "#{File.dirname(__FILE__)}/views"

  enable :sessions
  set :session_secret, 'super secret'

  helpers do
    def current_user
      @current_user ||=User.get(session[:user_id]) if session[:user_id]
    end
  end

end