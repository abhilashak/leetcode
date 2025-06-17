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
#
#   Ex: Subarray.new([4, -1, 2, 1]).max_sum
#######################################
class Subarray
  def initialize(numbers)
    @numbers = numbers
  end

  def max_sum
    return 'Provide non-empty array' if @numbers.empty?

    return @numbers.first if @numbers.length == 1

    max_sum = @numbers.first
    inherit_sum = @numbers.first
    @numbers[1..].each do |num|
      inherit_sum_add_num = inherit_sum + num
      # if current num is greater than inherited sum break the loop and start from current num
      inherit_sum = num > inherit_sum_add_num ? num : inherit_sum_add_num
      # preserve highest of this inherited sum for each element iteration
      max_sum = inherit_sum > max_sum ? inherit_sum : max_sum
    end
    max_sum
  end
end
