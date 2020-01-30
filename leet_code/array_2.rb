def max_profit(prices)
    index = 0
    max_profit = 0
    buy = 0
    while index < prices.length 
      
      if buy == 0 && prices[index] < 4 
          buy += prices[index]
      elsif buy > 0 && prices[index] >= 4
          max_profit += prices[index] - buy
          buy = 0
      elsif buy < prices[index] && prices[index] == prices[-1]
          max_profit += prices[index] - buy
      end

      index += 1
    end
    max_profit
end

p max_profit([7,1,5,3,6,4])
p max_profit([6,1,3,2,4,7])