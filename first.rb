require 'sinatra'
set port: 3000
get '/' do
	return "Hello World"
end


get '/time' do
	return Time.new.to_s
end

get '/profile/:username/:age' do
	return params[:username] +"," + params[:age]
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

def fact n
	if n == 1
		return 1
	else
		return n * fact(n-1)
	end
end

get '/factorial/:number' do
	result = fact(params[:number].to_i)
	puts result
	data = {}
	data["result"] = result
	data["time"] = Time.now
	erb :fact, :locals => data
end









