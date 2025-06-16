# frozen_string_literal: true

#######################################
# Given an integer array nums, find the subarray with the largest #sum, and return its sum.

# Example 1:
# Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
# Output: 6
# Explanation: The subarray [4,-1,2,1] has the largest sum 6.

# Example 2:
# Input: nums = [1]
# Output: 1
# Explanation: The subarray [1] has the largest sum 1.

# Example 3:
# Input: nums = [5,4,-1,7,8]
# Output: 23
# Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.

# Constraints:
# 1 <= nums.length <= 105
# -104 <= nums[i] <= 104

# Follow up: If you have figured out the O(n) solution, try coding another solution using
# the divide and conquer approach, which is more subtle.
#######################################
class Subarray
  def initialize(numbers)
    @numbers = numbers
  end

  def max
    return 'Provide non-empty array' if @numbers.empty?

    return @numbers.first if @numbers.length == 1

    sum_hash = {}
    @numbers.each_with_index do |num, i|
      sum_hash[i] = num
      other_nums_sum = @numbers[i..].inject(:+)
      sum_hash[i] = other_nums_sum if other_nums_sum > sum_hash[i]
    end

    sum_hash.values.max
  end
end
