def binaryPatternMatch(pattern, s) 
    voy = ["a", "e", "i", "o", "u", "y"]
    for i in 0..s.length do 
        if ( voy.include? s[i] ) 
            s[i] = "0" 
        else 
            s[i] = "1"
        end 
    end 
    # go over s and count the sub string match 
    count = 0
    while s.length >= pattern.length do 
        if pattern == s[0..pattern.length-1] 
            count += 1
        end 
        s.slice!(0)
    end 
    # puts "new s : #{s} "
    puts "count : #{count} "
end 

puts (binaryPatternMatch("010", "amazing")) # 2 

puts (binaryPatternMatch("100", "codesignal")) # 0