# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  min_price = prices[0]

  prices.each do |price|
    profit = [profit, (price - min_price)].max
    min_price = [min_price, price].min
  end       
  profit
end

# tc = o(n), space comp = o(1)
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
