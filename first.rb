require 'sinatra'

get '/' do
	return "Hello World"
end


get '/time' do
	return Time.new.to_s
end

get '/profile/:username' do
	return params[:username]
end
get '/profile/default' do
	return "Hello Default Path"
end

get '/first_page' do
	erb :first_page
end


get '/first_page/:number' do
	erb :number, :locals => {:print_number => params[:number].to_i}
end








