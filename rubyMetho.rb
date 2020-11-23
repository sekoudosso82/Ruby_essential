# RUBY METHODS 

# Prime checker 

def prime? (arg)
    if arg < 2 
        return false 
    end 
    for i in 2...arg do
         if arg%i == 0
             return false 
         end 
    end
    return true 
  
end 

or 
def prime?(arg)
    Prime.prime?(arg)
end


# argument Default value 
# assign default values to the variables. It allows us to 
# avoid passing a value for every argument, decreasing 
# the chance of error.

def take (arr, start_position=1)
    arr.slice(start_position, arr.length)
end 
take([1,2,3], 1) # [2, 3]
take([1,2,3], 2) # [3]
take([1,2,3]) # [2, 3]

# Ruby - Methods - Variable Arguments 

# Consider a method that computes the sum of numbers. Obviously, 
# you wouldn't want to write different methods accounting for some 
# variable number of arguments 
# (e.g.: summing two numbers, three numbers, four numbers, etc.). 
# This is where Ruby's * comes into play. Take a look at the 
# following code:

def sum(first, *rest)
    rest.reduce(first) { |o, x| o + x }
end

> sum(1) # first = 1, rest = [] => 1
> sum(1, 2) # first = 1, rest = [2] => 3
> sum(1, 2, 3) # first = 1, rest = [2, 3] => 6  
Write a method named full_name that generates the full 
names of people given their first name, followed by some 
variable number of middle names, followed by their last name.
def full_name(first, *rest)
    rest.reduce(first) { |o, x| o +" "+ x }
end
full_name('Harsha', 'Bhogle') # => "Harsha Bhogle"
full_name('Pradeep', 'Suresh', 'Satyanarayana') # => "Pradeep Suresh Satayanarayana"
full_name('Horc', 'G.', 'M.', 'Moon') # => "Horc G. M. Moon"

# Ruby - Methods - Keyword Arguments 

