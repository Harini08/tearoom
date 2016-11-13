require 'sinatra'
require 'mongo'
require 'json/ext'
require 'json'

configure do
  db = Mongo::Client.new(['127.0.0.1:27017'], :database => 'events_database')
  set :mongo_db, db[:events_database]
end

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
  new_event = { eventName: params[:eventName] }
  result = settings.mongo_db.insert_one new_event
  @eventName=params[:eventName]
  @organisation=params[:organisation]
  @date=params[:date]
  @place=params[:place]
  erb:events
end

get '/lists' do
  settings.mongo_db.find.to_a.to_json
end


get('/events') do
  @events = JSON.parse(settings.mongo_db.find.to_a.to_json)
  erb:events
 end


# get - displays the form
# post - process the data (store data here in the database)
#      - use mongodb
# redirect to new get (where it's displayed - result)
