require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')
require('pry')

get('/') do
  erb(:input)
end

get('/output') do
  @time = params.fetch("time").to_i
  @length = params.fetch("length").to_i
  @width = params.fetch("width").to_i
  @height = params.fetch("height").to_i
  @weight = params.fetch("weight").to_i

  shipping = Parcel.new(@time, @length, @width, @height, @weight)

  @final_cost = shipping.cost_to_ship + shipping.volume
  erb(:output)
end
