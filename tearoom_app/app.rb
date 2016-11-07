require 'sinatra'

get('/') do
  "Hello World"
end

get('/') do
  erb:index
end

get('/form') do
  erb:form
end

post('/events') do
  params.to_s
end


# get('/events') do
#   erb:events
# end


# get - displays the form
# post - process the data (store data here in the database)
#      - use mongodb
# redirect to new get (where it's displayed - result)
