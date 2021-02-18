# Complete the camelcase function below.
def camelcase(s)
    result = 1 
    for i in 0..(s.length - 1) do 
        if (s[i] != s[i].downcase) 
            result += 1
        end 
    end 
    result 
end