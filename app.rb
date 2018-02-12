require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')
require('pry')

get('/') do
  erb(:input)
ends
