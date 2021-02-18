def addTwoDigits(n)
    str = n.to_s.split("")
     
    product = 1 
    for i in 0..str.length-1 do
        product = product*(str[i].to_i)
    end 
    summ = 0 
    for i in 0..str.length-1 do
        summ += (str[i].to_i)
    end 
    diff = product - summ 
end
puts addTwoDigits(123456) # 699

puts addTwoDigits(1010) # -2