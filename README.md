# LeetCode Solutions

## 1. Two Sum
**Problem Link:** [Two Sum](https://leetcode.com/problems/two-sum/)

### Problem Description
Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

### Examples
```
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

Input: nums = [3,2,4], target = 6
Output: [1,2]

Input: nums = [3,3], target = 6
Output: [0,1]
```

### Constraints
- 2 <= nums.length <= 104
- -109 <= nums[i] <= 109
- -109 <= target <= 109
- Only one valid answer exists.

### Solution Approach
1. **Hash Map Solution (O(n) time complexity)**
   - Use a hash map to store numbers and their indices
   - For each number:
     - Calculate its complement (target - current_number)
     - Check if complement exists in hash map
     - If found, return both indices
     - If not found, store current number and its index

### Time and Space Complexity
- Time Complexity: O(n) - single pass through the array
- Space Complexity: O(n) - storing at most n elements in hash map

### Key Learnings
- Using hash maps for O(1) lookups
- Single pass solution optimization
- Handling edge cases (array length < 2)

### Files
- `two_sum/two_sum_1.rb` - Basic implementation
- `two_sum/two_sum_2.rb` - Optimized version
- `two_sum/two_sum_3.rb` - Alternative approach
- `two_sum/two_sum_4.rb` - Final optimized version
- Test files: `test_two_sum_*.rb`

---

## 2. Best Time to Buy and Sell Stock
**Problem Link:** [Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)

### Problem Description
You are given an array `prices` where `prices[i]` is the price of a given stock on the ith day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

### Examples
```
Input: prices = [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

Input: prices = [7,6,4,3,1]
Output: 0
Explanation: In this case, no transactions are done and the max profit = 0.
```

### Constraints
- 1 <= prices.length <= 105
- 0 <= prices[i] <= 104

### Solution Approach
1. **Single Pass Solution (O(n) time complexity)**
   - Keep track of the minimum price seen so far
   - For each price:
     - Update minimum price if current price is lower
     - Calculate potential profit (current_price - min_price)
     - Update maximum profit if current profit is higher

### Time and Space Complexity
- Time Complexity: O(n) - single pass through the array
- Space Complexity: O(1) - only using constant extra space

### Key Learnings
- Single pass optimization technique
- Tracking minimum/maximum values efficiently
- Understanding the constraint that you must buy before you sell
- Optimizing from O(n²) nested loops to O(n) single pass

### Files
- `buy_sell_stock/buy_sell_1.rb` - Optimized O(n) solution
- `buy_sell_stock/buy_sell_2.rb` - Alternative implementation
- Test files: `test_buy_sell_*.rb`
