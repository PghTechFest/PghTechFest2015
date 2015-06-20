require 'sinatra'
require 'chuck'

set :environment, :production

get '/quote' do
	Chuck.say	
end
