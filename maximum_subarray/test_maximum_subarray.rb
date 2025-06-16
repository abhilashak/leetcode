# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'maximum_subarray'
#################################
## Example 1:
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
#
#################################
class TestMaximumSubarray < Minitest::Test
  def setup
    ####
  end

  def test_empty_array
    assert_equal 'Provide non-empty array', Subarray.new([]).max_sum
  end

  def test_array_with_length_one
    assert_equal 1, Subarray.new([1]).max_sum
  end

  def test_array_with_length_two
    assert_equal 3, Subarray.new([1, 2]).max_sum
    assert_equal 1, Subarray.new([1, -2]).max_sum
    assert_equal(-1, Subarray.new([-1, -2]).max_sum)
    assert_equal(0, Subarray.new([0, 0]).max_sum)
  end

  def test_array_with_length_four
    assert_equal 6, Subarray.new([4, -1, 2, 1]).max_sum
    assert_equal 4, Subarray.new([-2, 1, -3, 4]).max_sum
    assert_equal 3, Subarray.new([1, -3, 2, 1]).max_sum
    assert_equal(-1, Subarray.new([-1, -2, -3, -4]).max_sum)
  end

  def test_array_with_length_six
    assert_equal 21, Subarray.new([1, 2, 3, 4, 5, 6]).max_sum
    assert_equal 9, Subarray.new([-1, -2, 5, 4, -3, -1]).max_sum
    assert_equal 5, Subarray.new([-2, 1, -3, 4, -1, 2]).max_sum
    assert_equal(-1, Subarray.new([-1, -2, -3, -4, -5, -6]).max_sum)
  end

  def test_array_with_length_ten
    assert_equal 55, Subarray.new([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).max_sum
    assert_equal 15, Subarray.new([-1, -2, 5, 4, 3, 2, 1, -3, -4, -5]).max_sum
    assert_equal 21, Subarray.new([8, 7, 6, -10, -5, -3, -2, -1, -4, -6]).max_sum
    assert_equal 14, Subarray.new([-8, -7, -6, -10, -5, -3, 2, 3, 4, 5]).max_sum
    assert_equal(4, Subarray.new([-1, -2, 1, 2, -5, 2, -1, 0, 3, -10]).max_sum)
  end
end
