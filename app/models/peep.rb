# require 'data_mapper'
class Peep

	include DataMapper::Resource

	property :id, Serial
	property :name, String
	property :chandle, String
	property :content, String
	property :created_at, DateTime
	

end