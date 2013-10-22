require 'json'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/color' do
  cell= rand(0..8)
  color= "#" + "%06x" % (rand * 0xffffff)
  {cell_number: cell, chosen_color: color}.to_json
end