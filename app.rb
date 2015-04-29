require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/vehicle')

get('/') do
    erb(:index)
end

get('/vehicles') do
    @vehicles = Vehicles.all()
    erb(:vehicles)
end
