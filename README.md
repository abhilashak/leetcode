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

---

## 3. Contains Duplicate
**Problem Link:** [Contains Duplicate](https://leetcode.com/problems/contains-duplicate/)

### Problem Description
Given an integer array `nums`, return `true` if any value appears at least twice in the array, and return `false` if every element is distinct.

### Examples
```
Input: nums = [1,2,3,1]
Output: true
Explanation: The element 1 occurs at the indices 0 and 3.

Input: nums = [1,2,3,4]
Output: false
Explanation: All elements are distinct.

Input: nums = [1,1,1,3,3,4,3,2,4,2]
Output: true
```

### Constraints
- 1 <= nums.length <= 105
- -109 <= nums[i] <= 109

### Solution Approach
1. **Hash Set Solution (O(n) time complexity)**
   - Use a set to store numbers we've seen
   - For each number:
     - Check if it already exists in the set
     - If found, return `true` (duplicate found)
     - If not found, add it to the set
   - If we complete the loop without finding duplicates, return `false`

### Time and Space Complexity
- Time Complexity: O(n) - single pass through the array
- Space Complexity: O(n) - storing at most n elements in the set

### Key Learnings
- Using sets for O(1) lookups and duplicate detection
- Early termination when duplicate is found
- Handling edge cases (empty arrays, single elements)
- Set vs Array performance for membership testing

### Files
- `array_duplicate/array_duplicate.rb` - Hash set implementation
- `array_duplicate/test_array_duplicate.rb` - Test cases

---

## 4. Product of Array Except Self
**Problem Link:** [Product of Array Except Self](https://leetcode.com/problems/product-of-array-except-self/)

### Problem Description
Given an integer array `nums`, return an array `answer` such that `answer[i]` is equal to the product of all the elements of `nums` except `nums[i]`.

The product of any prefix or suffix of `nums` is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.

### Examples
```
Input: nums = [1,2,3,4]
Output: [24,12,8,6]

Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]
```

### Constraints
- 2 <= nums.length <= 105
- -30 <= nums[i] <= 30
- The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

### Solution Approach
1. **Brute Force Solution (O(n²) time complexity)**
   - For each element at index i:
     - Create a new array excluding the element at index i
     - Calculate the product of all remaining elements
     - Store the result in the answer array

### Time and Space Complexity
- Time Complexity: O(n²) - for each element, we process the remaining n-1 elements
- Space Complexity: O(1) - excluding the output array, only constant extra space used

### Key Learnings
- Array manipulation with `reject` and `with_index`
- Product calculation using `inject(:*)`
- Handling edge cases (arrays with length < 2)
- Understanding the constraint of no division operation
- **Follow-up Challenge**: Can be optimized to O(n) time with O(1) extra space using left and right pass technique

### Files
- `product_except_self/product_except_self.rb` - Brute force implementation
- `product_except_self/test_product_except_self.rb` - Test cases
