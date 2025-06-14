# frozen_string_literal: true

##########################################
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
#  Constraints:
# 1 <= prices.length <= 105
# 0 <= prices[i] <= 104
##########################################
# @param {Integer[]} prices
# @return {Integer}
# Ex: BuySellStock.new([2,8]).max_profit
class BuySellStock
  def initialize(prices)
    @prices = prices
    @profit_store = {}
  end

  def max_profit
    return 'Provide an array with 1 or more elements' if @prices.empty?

    max_profit = 0 # Start with 0 profit
    return max_profit if @prices.length == 1

    lowest_price = @prices.first # assume lowest price is the first price
    @prices.each do |current_price|
      current_profit = current_price - lowest_price
      max_profit = current_profit  if current_profit > max_profit
      lowest_price = current_price if current_price < lowest_price
    end

    max_profit
  end
end
