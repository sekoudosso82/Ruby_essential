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
        array.map { |string| string.upcase } => ["A", "B", "C"]

        array = ["11", "21", "5"]
        array.map { |str| str.to_i } => [11, 21, 5]

        # Convert hash values to symbols: 
        hash = { bacon: "protein", apple: "fruit" }
        hash.map { |k,v| [k, v.to_sym] }.to_h => {:bacon=>:protein, :apple=>:fruit}

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
        => [nil, 2, nil, 4, nil]

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


# get input from the user 
    puts "WELCOME TO HOSPITAL WORLD! 🏥"
    puts "Choose a doctor!"
    # display all doctors name 
        Doctor.all.each do |doc|
        puts doc.name
        end
        # enter doctor name 
    input = gets.chomp

# check if A is between B and def index
        a.range?(b, c)
    # or 
        return a.range?(b, c)
    # or
        a.range? b, c
    # or
        return a.range? b, c

# check if a number is even 

    munberA = 5 
    numberA.even? => false  
# UNTIL  
    until coder.oh_one?
        coder.practice  
    end 
# while test

# Rub Array Essential  

    arr = [9, 5, 1, 2, 3, 4, 0, -1]
    arr[4] => 3
    arr.at(4) => 3
    arr[1..3] # .. indicates both indices are inclusive. => [5,1,2]
    arr[1...3] # ... indicates the last index is excluded. => [5,1] 
    arr[1,4] # Start index and the length of the range => [5, 1, 2, 3] 
    def element_at(arr, index)
        # return the element of the Array variable `arr` at the position `index`
        # arr.at(index) # or
        # arr[index]
        arr[index]   
    end

    def inclusive_range(arr, start_pos, end_pos)
        # return the elements of the Array variable `arr` 
        # between the start_pos and end_pos (both inclusive)
        arr[start_pos..end_pos]
    end

    def non_inclusive_range(arr, start_pos, end_pos)
        # return the elements of the Array variable
        #  `arr`, start_pos inclusive and end_pos exclusive
        arr[start_pos...end_pos]
    end

    def start_and_length(arr, start_pos, length)
        # return `length` elements of the Array variable
        #  `arr` starting from `start_pos`
        arr[start_pos, length]
    end
    
    # To access the elements from the end of the list, we can use negative indices.  
    arr = [9, 5, 1, 2, 3, 4, 0, -1]
    # last element 
        arr[-1] => -1
    def neg_pos(arr, index)
        # return the element of the array at the 
        # position `index` from the end of the list
        # Clue : arr[-index]
        arr[-index]
    end
   
    #    The first element of the array can be accessed using
            arr.first => 9
            def first_element(arr)
                # return the first element of the array
                # arr.first
                arr.first
            end
   
    #    The last element of the array can be accessed using
            arr.last => -1
            def last_element(arr)
                # return the last element of the array
                # arr.last
                arr.last
            end
   
    #    The first n elements of the array can be accessed using
            arr.take(3) => [9, 5, 1]
            def first_n(arr, n)
                # return the first n elements of the array
                arr.take(n)
            end

   
    #    Everything but the first n elements of the array can be accessed using
            arr.drop(3) => [2, 3, 4, 0, -1]
            def drop_n(arr, n)
                # drop the first n elements of the array and return the rest
                arr.drop(n)
            end

    # push allows one to add an element to the end of the list.
        x = [1,2]
        x.push(3) # => [1,2,3]
        def end_arr_add(arr, element)
            # Add `element` to the end of the Array variable
            #  `arr` and return `arr`
            arr.push(element)
        end
   
    #    insert allows one to add one or more elements starting from a given index (shifting elements after the given index in the process).
   
        x = [1,2]
        x.insert(1, 5, 6, 7) # => [1, 5, 6, 7, 2]
        def index_arr_add(arr, index, element)
            # Add `element` at position `index` to the Array 
            # variable `arr` and return `arr`
            arr.insert(index, element)
        end
        
        def index_arr_multiple_add(arr, index)
            # add any two elements to the arr at the index
            arr.insert(index, 1, 3)
        end
   
    #    unshift allows one or more elements to be added at the beginning of the list.
    
        x = [1,2,3]
        x.unshift(10, 20, 30) # => [10, 20, 30, 1, 2, 3]
        def begin_arr_add(arr, element)
            # Add `element` to the beginning of the Array 
            # variable `arr` and return `arr`
            arr.unshift(element)
        end

        # DELETE FROM ARRAY 

            arr = [5, 6, 5, 4, 3, 1, 2, 5, 4, 3, 3, 3] 

        # Delete an element from the end of the array
            arr.pop # => 3
            def end_arr_delete(arr)
                # delete the element from the end of the array 
                # and return the deleted element
                arr.pop() 
            end
    
        # Delete an element from the beginning of the array
            arr.shift # => 5
            def start_arr_delete(arr)
                # delete the element at the beginning of the array 
                # and return the deleted element
                arr.shift()   
            end
    
        # Delete an element at a given position
            arr.delete_at(2) # => 4
            def delete_at_arr(arr, index)
                # delete the element at the position #index
                arr.delete_at(index)
            end
    
        # Delete all occurrences of a given element
            arr.delete(5) # => 5
            arr => [6, 3, 1, 2, 4, 3, 3]
            def delete_all(arr, val)
                # delete all the elements of the array where element = val
                arr.delete(val)
            end
    
    # Non-Destructive Selection. 
        arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]
        arr.select {|a| a > 2} # => [3, 4, 3, 4, 5, 6]
        def select_arr(arr)
            # select and return all odd numbers from the Array variable `arr`
              arr.select { |x| x%2!=0 }
        end
        arr.reject {|a| a > 2} # => [2, 1, 2]
        def reject_arr(arr)
            # reject all elements which are divisible by 3
              arr.reject { |x| x%3 ==0 }
        end
        arr # => [3, 4, 2, 1, 2, 3, 4, 5, 6]
        arr.drop_while {|a| a > 1} # removes elements till the 
        # block returns false for the first time
             # => [1, 2, 3, 4, 5, 6]


#  destructive behavior (change to the original array) 
        arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]  
        arr.delete_if {|a| a < 2} # => [3, 4, 2, 2, 3, 4, 5, 6] 
        def delete_arr(arr)
            # delete all negative elements
              arr.delete_if { |x| x < 0 }
        end 
        arr.keep_if {|a| a < 4}   # => [3, 2, 2, 3]
        def keep_arr(arr)
            # keep all non negative elements ( >= 0)
              arr.keep_if { |x| x >= 0 }
        end 

        arr.select! {|a| a > 2} # => [3, 4, 3, 4, 5, 6]
        arr.reject! {|a| a > 2} # => [2, 1, 2]

# Ruby Hash
    # Initialize an empty Hash with the variable name default_hash and the default value of every key set to 1.

        default_hash = Hash.new(1)
        or
        default_hash = Hash.new
        default_hash.default = 1

    Initialize a hash with the variable name hackerrank and having the key-value pairs

        "simmy", 100  
        "vivmbbs",200
        hackerrank = {"simmy" => 100, "vivmbbs" => 200}

    Hash can be defined using a new method

        hackerrank = Hash.new
        hackerrank["simmy"] = 100
        hackerrank["vivmbbs"] = 200

    # Ruby Hash - Each
    user = {"viv" : 10, "simmy" : 20, "sp2hari" : 30}

    Using each, each element can be iterated as

    user.each do |key, value|
        # some code on individual key, value
    end

    or

    user.each do |arr|
        # here arr[0] is the key and arr[1] is the value
    end
    # example 
    hash = {"viv" : 10, "simmy" : 20, "sp2hari" : 30}

    def iter_hash(hash)
        hash.each do |arr|
            puts "#{arr[0]}"
            puts "#{arr[1]}"
        end
    end
    # Ruby Hash - Addition, Deletion, Selection 
    h = Hash.new
    h.default = 0

        A new key-value pair can be added using or the store method

        # h[key] = value or  h.store(key, value)
        hackerrank[543121] = 100

        An existing key can be deleted using the delete method
            h.delete(key)
        # Delete all key-value pairs where keys are even-valued.
            hackerrank.delete_if {|key, value| key % 2 == 0}
    # For destructive selection and deletion, we can use keep_if and delete_if as seen in Array-Selection

    h = {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25} # => {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
    h.keep_if {|key, value| key % 2 == 0} # or 
    h.delete_if {|key, value| key % 2 != 0}
        # => {2 => 4, 4 => 16}  
    # Retain all key-value pairs where keys are Integers
        hackerrank.keep_if {|key, value| key.is_a? Integer}

# Ruby - Strings - Indexing 
    str = "Hello World!"
    str[str.size-1] # => "!"
    str[-1] # first character from the end of the string => "!"
    str[-2] # second last character => "d"
    str[0] # first character => "H"

    The same examples shown above can be used for 
    assignment / deletion of characters. We can insert 
    characters by giving a non-empty assignment or 
    delete characters in the range by giving an empty assignment.
    
    Consider the example below:
    str = "Hello"
    str[str.size, 0] = " World!" # append by assigning at the end of the string
    str # => "Hello World!"
    str[5, 0] = "," # insert a comma after the 5th position
    str[5, 6] = ""  # delete 6 characters starting from index 5. 
    str # => "Hello!"
    str[5,1] = " World" # replace the string starting from index 5 and of length 1 with the given string. 

# open SQLite3 from terminal 
    open db/development.sqlite 
    # RAKE MIGRATION CREATE TABLE
    rake db:create_migration Name=create_student_table
    # then in that migration 
    def change 
        create_table :table_name do |t|
          t.column_type :column_name
        
          t.timestamps
        end
    end 
    rake db:migrate 
# RAKE MIGRATION REMOVE COLUMN FROM TABLE
    remove_column :table_name, :column_name
    rake db:create_migration Name=remove_teacher_id_from_student_table
    # then in that migration 
    def change 
        remove_column :students, :teacher_id 
    end 
    rake db:migrate 
    
    # then 
    rake db:create 
    rake  db:rollback # last migration 
    rake db:rollback STEP=2 # the second migration

    # Activ record does the background work for you 
    rake console 
    # let say you have a Teacher class 
    x = Teacher.new(key: "value", key: "value") # create instance but not save 
    x.save # save x instance to the db
    Teacher.create(key: "value", key: "value") # create instance save
    x.update(key: "value", key: "value") # update only key value you want

    Teachers.destroy_all # destrooy db content

    Teacher.find(2) #
    Teacher.find_by(key: "value") # find base on key value you want
    Teacher.find_by(name: "Sekou")

    Teacher.order(:name)




def new

end

def create

end

def edit

end

def update

end

def show

end

def destroy

end





