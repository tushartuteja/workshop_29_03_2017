require 'sinatra'

set port: 3000

all_tasks = []

get '/' do
	data = {}
	data["all_tasks"] = all_tasks
	erb :todo, :locals => data
end

post '/add_task' do
	task = params["task"]
	all_tasks << task
	puts all_tasks
	return redirect '/'
end
