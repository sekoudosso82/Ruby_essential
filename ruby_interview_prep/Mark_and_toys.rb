# Mark and Jane are very happy after having their first 
# child. Their son loves toys, so Mark wants to buy some. 
# There are a number of different toys lying in front of him, 
# tagged with their prices. Mark has only a certain amount to 
# spend, and he wants to maximize the number of toys he buys 
# with this money. Given a list of toy prices and an amount 
# to spend, determine the maximum number of gifts he can buy.

# Note Each toy can be purchased only once.

# Example
#     prices = [1,2,4,3]
#     k = 7
# The budget is 7 units of currency. He can buy items 
# that cost [1,2,3] for 6 or [3,4] for 7units. 
# The maximum is 3 items. 

# Complete the maximumToys function below.
def maximumToys(prices, k)
    prices.sort!
    count = 0
    index = 0
    while prices[index] <= k do 
        count += 1
        k = k - prices[index]
        index += 1
    end
    #  or we can use for loop 
    # for i in 0..prices.length-1 do 
    #     if prices[i] <= k
    #         k = k - prices[i]
    #         count += 1
    #     end
    # end 
    count
    

end