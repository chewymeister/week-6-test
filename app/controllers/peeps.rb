require 'sinatra'

class Chitter < Sinatra::Base
	post '/peeps' do
		name = params["name"]
		chandle = params["chandle"]
		content = params["content"]
		Peep.create(:name => name, :chandle => chandle, :content => content)
		redirect to('/')
	end
end