# frozen_string_literal: true

#######################
#
# You are given an array prices where prices[i] is the price of a given stock on the ith day.

# You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

# Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

# Example 1:

# Input: prices = [7,1,5,3,6,4]
# Output: 5
# Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
# Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
# Example 2:

# Input: prices = [7,6,4,3,1]
# Output: 0
# Explanation: In this case, no transactions are done and the max profit = 0.
#
########################
# @param {Integer[]} prices
# @return {Integer}
# Ex: BuySellStock.new([2,8]).max_profit
class BuySellStock
  def initialize(prices)
    @prices = prices
    @profit_store = {}
  end

  def max_profit
    return 'Provide an array of two or more elements' if @prices.length < 2

    # iterate today's price
    @prices.each_with_index do |todays_price, index|
      # check profit with future prices
      @prices[(index + 1)..].each do |future_price|
        profit = future_price - todays_price
        update_profit_store(index, profit) if profit.positive?
      end
    end

    @profit_store.values.max || 0
  end

  def update_profit_store(index, profit)
    @profit_store[index] = 0 unless @profit_store[index]

    @profit_store[index] = profit if profit > @profit_store[index]
  end
end
