require 'sinatra'

get('/') do
  "Hello World"
end

get('/form') do
  erb:form
end
