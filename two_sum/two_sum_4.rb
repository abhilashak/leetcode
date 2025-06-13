# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.
# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]

# Constraints:

# 2 <= nums.length <= 104
# -109 <= nums[i] <= 109
# -109 <= target <= 109
# Only one valid answer exists.

# Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?

#####################################
# Solution 2
# TwoSum.new([2,7,11,15], 9).indices
#####################################
class TwoSum
  def initialize(nums, target)
    @numbers_array = nums
    @target = target
  end

  # @return [index_1, index_2]
  def indices
    return 'Provide an array with length 2 or more elements' if @numbers_array.length < 2

    hash = {}

    @numbers_array.each_with_index do |num, index|
      complement = @target - num # Calculate what number we need

      # Check if we've seen the number we need
      # If found, return both indices
      return [hash[complement], index] if hash.key?(complement)

      # If not found, store current number and its index
      hash[num] = index
    end
  end
end
