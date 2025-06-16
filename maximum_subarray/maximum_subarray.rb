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

    maximum_sum = @numbers.first
    # do array right side scan
    @numbers.each_with_index do |num, i|
      current_sum = num # calculate from current number
      right_side_numbers = @numbers[(i + 1)..]
      is_last_number_of_array = right_side_numbers.empty?
      maximum_sum = current_sum if is_last_number_of_array && current_sum > maximum_sum

      right_side_numbers.each do |num_right|
        current_sum += num_right
        maximum_sum = current_sum if current_sum > maximum_sum
      end
    end

    maximum_sum
  end
end
