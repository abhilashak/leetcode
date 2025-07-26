# frozen_string_literal: true

# disable rubocop GuardClause for better readability in the code
# rubocop:disable Style/GuardClause
###########################################################
# #209
# Given an array of positive integers nums and a positive integer target, return the minimal length of a subarray
# whose @sum is greater than or equal to target. If there is no such subarray, return 0 instead.
#
# Example 1:
#
# Input: target = 7, nums = [2,3,1,2,4,3]
# Output: 2
# Explanation: The subarray [4,3] has the minimal length under the problem constraint.
# Example 2:
#
# Input: target = 4, nums = [1,4,4]
# Output: 1
# Example 3:
#
# Input: target = 11, nums = [1,1,1,1,1,1,1,1]
# Output: 0
#
#
# Constraints:
#
# 1 <= target <= 109
# 1 <= nums.length <= 105
# 1 <= nums[i] <= 104
#
###########################################################
class SubArray
  def initialize(nums, target)
    @nums = nums
    @target = target
    @min_length = 0 # default 0 -> solution not found
    @left_pos = 0
    @right_pos = 0
    @sum = nil
  end

  def min_size
    while @right_pos < @nums.length
      # first position where left and right positions are at starting point
      @sum = if @left_pos.zero? && @right_pos.zero?
               @nums[@right_pos]
             else
               # add elements inside the window
               @nums[@left_pos..@right_pos].sum
             end

      if solution_found?
        update_min_length

        return 1 if @min_length == 1 # best scenario found, stop here
      else
        @right_pos += 1 # increase window size by 1
      end
    end

    @min_length
  end

  private

  def update_min_length
    new_length = @right_pos - @left_pos + 1

    if min_length_empty? || min_or_equal_length?(new_length)
      @min_length = new_length
      @left_pos += 1
    end
  end

  def solution_found?
    @sum >= @target
  end

  def min_length_empty?
    @min_length.zero?
  end

  # if new length of subarray found is less than already found min length
  # or new length found is equal to previous min length (should decrease window size
  # by increasing left pos to find the less length subarray)
  def min_or_equal_length?(new_length)
    new_length <= @min_length
  end
end
