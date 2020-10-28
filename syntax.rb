# FOR EACH 
    # The each iterator returns all the elements of an array or a hash.
    # Executes code for each element in collection. Here, collection 
    # could be an array or a ruby hash.
    # It's does not alter the original argument
    # Syntax
    collection.each do |variable|
        code
    end
 
    
    [1, 2, 3].each { |n| puts "Current number is: #{n}" }
    [1, 2, 3].each do |n|
        text = "Current number is: #{n}"
        puts text
    end

    my_hash = {min: 2, max: 5}
    my_hash.each { |key, value| puts "k: #{key}, v: #{value}" }

# MAP 
    # Map is a Ruby method that you can use with Arrays, Hashes & Ranges.
    # The main use for map is to TRANSFORM data.
        array = ["a", "b", "c"]
        array.map { |string| string.upcase }
        # ["A", "B", "C"]

        array = ["11", "21", "5"]
        array.map { |str| str.to_i }
        # [11, 21, 5]

        # Convert hash values to symbols: 
        hash = { bacon: "protein", apple: "fruit" }
        hash.map { |k,v| [k, v.to_sym] }.to_h
        # {:bacon=>:protein, :apple=>:fruit}

    # Ruby Map vs Each
        # What is the difference between map & each?
        # Each is like a more primitive version of map…
        # It gives you every element so you can work with it, but it doesn’t collect the results.
        # Each always returns the original, unchanged object.
        # While map does the same thing, but…
        # It returns a new array with the transformed elements.
    
    # Ruby Map vs Collect
    #     Map and Collect are exactly the same method.
    #     They are different names for the same thing!

    planet.map do |planet|
        planet.name 
    end

# COLLECT 
        Array#collect() : collect() is an Array class method 
        # which invokes the argument block once for each element 
        # of the array. A new array is returned which has the value 
        # returned by the block.

        # Syntax:  Array.collect()

        # Parameter:  Arrays in which we want elements to be invoked

        # Return:  array with all the envoked elements

        # Creates a new array containing the values returned by the block. 
        >> ['a', 'b', 'c'].collect{|letter| letter.capitalize}
        => ["A", "B", "C"]

        array = [1,2,3,4,5]
        array.collect {|num| num.even?} => [false, true, false, true, false]
        #returns a boolean expression of the test for each element

        array.collect do |num|   
            if num.even?   
                num   
            end
        end
        # => [nil, 2, nil, 4, nil]

# Select  / FIND_ALL
    # SELECT or FIND_ALL is best used when 
    # you need to iterate over an array or hash 
    # but only need the elements that return true when tested. 
    # SELECT and FIND_ALL are basically identical when 
    # it comes to working with arrays.

        array = [1,2,3,4,5,6]
        array.select {|num| num.even?} => [2,4,6]
        array.find_all {|num| num.even?} => [2,4,6]
    
    # ******** Important **********
    # When it comes to iterating over hashes, this is when 
    # we see the difference between .select and .find_all.

        hash = {a:1,b:2,c:3,d:4,e:5,f:6}
        hash.select {|key,value| value.even?} => {:b=>2, :d=>4, :f=>6}
        hash.find_all {|key,value| value.even?} =>[[:b, 2],[:d, 4],[:f, 6]]

        # Notice how in the above example how both the .
        # select and .find_all return the same key:value pairings but 
        # .select returns the value in the form of the original input 
        # which in this case is a hash. But we can see that .
        # find_all return the key:value pairing in an array.
# FIND 
    find(p1 = v1) public

    # Passes each entry in enum to block. 
    # RETURNS THE FIRST FOR WHICH BLOCK IS NOT FALSE
    # If no object matches, calls ifnone and returns its result 
    # when it is specified, or returns nil otherwise.

    # If no block is given, an enumerator is returned instead.

    (1..100).detect  => #<Enumerator: 1..100:detect>
    (1..100).find    => #<Enumerator: 1..100:find>

    (1..10).detect   { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
    (1..10).find     { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
    (1..100).detect  { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35
    (1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35
    
    # SELECT vs FIND 
        # The .find method
        #     This Ruby method iterates through an array and 
        #     gives you the first match for which the expression 
        #     within a block returns true.
        [1,2,3,4,5,6,7].find { |x| x.between?(3,4) } => 3
        [1,2,3,4,5,6,7].find { |x| x.between?(3,6) } => 3
        
        # The .select method
        #     The .select method iterates on an array or hash 
        #     and returns an array or hash (depending on the datatype) 
        #     of all values that evaluate as true given a block of code. 
        #     This method is great when you want to filter a list and 
        #     only return values that match certain conditions.
        [1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]

        # array containing all elements of array for which the 
        # given block returns a true value

        Model.all.select { |m| m.field == value }

        Model.all.select do |m| 
            m.field == value 
        end

        def countries  
            Country.all.select do |country|
                country.continent == self  
            end
        end

        [1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]
        a.select { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]


# REDUCE 
    # The ‘reduce’ method can be used to take an array and 
    # reduce it to a single value.
    def sum(array)
        sum = 0
        array.each do |number|
          sum += number
        end
        return sum 
    end 
    # equivalent
    def sum(array)
        array.reduce(0) { |sum, num| sum + num }
    end
    # or
    def sum(array)
        array.reduce(:+)
    end
    p sum([5, 10, 20]) # => 35





