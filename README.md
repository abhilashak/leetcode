# LeetCode Solutions

## Two Sum
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
