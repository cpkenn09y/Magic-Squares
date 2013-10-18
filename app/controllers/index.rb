require 'json'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/color' do
  p "*" * 60
  #Create and return a JSON object with the random cell and color given below.

  cell= rand(0..8)
  color= "#" + "%06x" % (rand * 0xffffff)
  {cell_number: cell, chosen_color: color}.to_json

end