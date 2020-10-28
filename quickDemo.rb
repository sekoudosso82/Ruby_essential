require 'sinatra'
require 'pry'

get '/home' do 
    "<h1> you made a home <h1>"
    binding.pry
end 