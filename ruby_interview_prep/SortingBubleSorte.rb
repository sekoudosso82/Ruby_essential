# Given an array of integers, sort the array in ascending 
# order using the Bubble Sort algorithm above. Once sorted, 
# print the following three lines:

#     1. Array is sorted in numSwaps swaps., where 
#         numSwaps is the number of swaps that took place.
#     2. First Element: firstElement, where firstElement 
#         is the first element in the sorted array.
#     3. Last Element: lastElement, where lastElement 
#         is the last element in the sorted array.

# Complete the countSwaps function below.
def countSwaps(a)
    swapCounter=0
    n = a.length
    for i in 0..n-1 do
        for j in 0..n - 2 do  
            if a[j] > a[j + 1]
                temp=a[j+1]
                a[j+1]=a[j]
                a[j]=temp
                swapCounter+=1
            end
        end
    end
    # console.log("Last Element:",a[a.length-1])
    puts "Array is sorted in #{swapCounter} swaps."
    puts "First Element: #{a[0]}"
    puts "Last Element: #{a[a.length-1]}"
end