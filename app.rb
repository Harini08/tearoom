require 'sinatra'

get('/') do
	erb :form
end

get('/:name') do
  @name = params[:name].capitalize

  erb :hello
end
