require 'sinatra'

class Chitter < Sinatra::Base
	get '/' do
    @peeps = Peep.all(:order => [ :created_at.desc ])
    @current_user = session[:user]
    erb :index
  end

  
end