require 'sinatra'

get('/') do
  "Hello World"
end

get('/:name') do
  @name = params[:name].capitalize

  erb :hello
end
