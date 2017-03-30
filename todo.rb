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
	task_hash = {}
	task_hash["content"] = task
	task_hash["completed"] = false
	all_tasks << task_hash
	puts all_tasks
	return redirect '/'
end

post '/mark_complete' do
	content = params["content"]
	all_tasks.each do |task|
		if task["content"] == content
			task["completed"] = true
		end
	end
	return redirect '/'

end










