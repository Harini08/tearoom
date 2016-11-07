require 'sinatra'

get('/') do
	erb :form
end

get('/form') do
  erb:form
end

get - displays the form
post - process the data (store data here in the database)
     - use mongodb
redirect to new get (where it's displayed - result)

