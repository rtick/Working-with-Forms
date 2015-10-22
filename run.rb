require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/form' do
	# code!
	@states = [] #create an array called states

	#create a hash
	key = ["PA","NY","TX","NC","SC"] #key
	value = ["Pennsylvania", "New York", "Texas", "North Carolina", "South Carolina"] #value


	0.upto(4) do | s | #going to add each hash to our array
		state = {} #initializing state hash
		state[:id] = key[s] #adding ID
		state[:name] = value[s] #adding NAME
		@states << state #adding state hash to states array
	end

	@states.sort_by!{|state| state[:name]} #sorted alphabetically
	@params = {}
	erb :form, layout: :main
end

post '/form' do
	# code!
	@states = [] #create an array called states

	#create a hash
	key = ["PA","NY","TX","NC","SC"] #key
	value = ["Pennsylvania", "New York", "Texas", "North Carolina", "South Carolina"] #value


	0.upto(4) do | s | #going to add each hash to our array
		state = {} #initializing state hash
		state[:id] = key[s] #adding ID
		state[:name] = value[s] #adding NAME
		@states << state #adding state hash to states array
	end

	@states.sort_by!{|state| state[:name]} #sorted alphabetically

	erb :form, layout: :main
end

get '/example' do
  # code!
  erb :example, layout: :main
end

post '/example' do
  # code!
  erb :example, layout: :main
end
