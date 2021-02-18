# require 'sinatra'
# require 'pry'

# get '/home' do 
#     "<h1> you made a home <h1>"
#     binding.pry
# end 
# arr = [10,10, 1, 2,  3]

# arr.each do |elmnt|
#     puts elmnt 
# end 

# arr2 = Array.new(2,10)

# arr2.each do |elmnt|
#     puts "arr2 #{elmnt}" 
# end 

# puts "droop #{arr.drop(1)} "

arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]  
        # arr.delete_if {|a| a < 2} # => [3, 4, 2, 2, 3, 4, 5, 6]  
        # arr.keep_if {|a| a < 4}   # => [3, 2, 2, 3]
        arr.select! {|a| a > 2} # => [3, 4, 3, 4, 5, 6]
        # arr.reject! {|a| a > 2} # => [2, 1, 2]

arr.each do |elmnt|
    puts "arr #{elmnt}" 
end 