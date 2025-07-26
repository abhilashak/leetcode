# frozen_string_literal: true

#######################################################
# #209
# Given an array of positive integers nums and a positive integer target, return the minimal length of a subarray
# whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.
#
#######################################################
require 'minitest/autorun'
require_relative 'subarray_sum_min_size'

class TestSubArraySumMinSize < Minitest::Test
  def set_up; end

  def test_array_of_length_one
    assert_equal 0, SubArray.new([2], 3).min_size
    assert_equal 1, SubArray.new([2], 2).min_size
    assert_equal 0, SubArray.new([3], 4).min_size
  end

  def test_array_of_length_two
    assert_equal 0, SubArray.new([2, 2], 5).min_size
    assert_equal 0, SubArray.new([1, 2], 10).min_size
    assert_equal 2, SubArray.new([2, 2], 4).min_size
    assert_equal 2, SubArray.new([3, 5], 8).min_size
  end

  def test_array_of_length_three
    assert_equal 0, SubArray.new([2, 3, 4], 10).min_size
    assert_equal 1, SubArray.new([12, 3, 9], 10).min_size
    assert_equal 2, SubArray.new([2, 3, 4], 7).min_size
    assert_equal 1, SubArray.new([2, 3, 4], 4).min_size
  end

  def test_array_of_length_five
    assert_equal 0, SubArray.new([2, 3, 4, 1, 9], 20).min_size
    assert_equal 2, SubArray.new([2, 3, 9, 1, 0], 10).min_size
    assert_equal 4, SubArray.new([2, 3, 4, 6, 4], 17).min_size
    assert_equal 5, SubArray.new([2, 3, 4, 12, 10], 31).min_size
  end

  # Original LeetCode examples
  def test_leetcode_example1
    # Input: target = 7, nums = [2,3,1,2,4,3]
    # Output: 2 (subarray [4,3])
    assert_equal 2, SubArray.new([2, 3, 1, 2, 4, 3], 7).min_size
  end

  def test_leetcode_example2
    # Input: target = 4, nums = [1,4,4]
    # Output: 1 (subarray [4])
    assert_equal 1, SubArray.new([1, 4, 4], 4).min_size
  end

  def test_leetcode_example3
    # Input: target = 11, nums = [1,1,1,1,1,1,1,1]
    # Output: 0 (no subarray sums to >= 11)
    assert_equal 0, SubArray.new([1, 1, 1, 1, 1, 1, 1, 1], 11).min_size
  end

  # Edge cases
  def test_empty_array
    assert_equal 0, SubArray.new([], 5).min_size
  end

  def test_target_zero
    assert_equal 1, SubArray.new([1, 2, 3], 0).min_size
  end

  def test_target_equals_single_element
    assert_equal 1, SubArray.new([5, 2, 3], 5).min_size
  end

  def test_target_equals_array_sum
    assert_equal 3, SubArray.new([1, 2, 3], 6).min_size
  end

  def test_target_greater_than_array_sum
    assert_equal 0, SubArray.new([1, 2, 3], 10).min_size
  end

  # Additional test cases
  def test_consecutive_ones
    assert_equal 3, SubArray.new([1, 1, 1, 1, 1], 3).min_size
    assert_equal 5, SubArray.new([1, 1, 1, 1, 1], 5).min_size
    assert_equal 0, SubArray.new([1, 1, 1, 1, 1], 6).min_size
  end

  def test_large_numbers
    assert_equal 1, SubArray.new([100, 1, 1, 1], 50).min_size
    assert_equal 2, SubArray.new([50, 50, 1, 1], 100).min_size
  end

  def test_window_shrinking
    # Test that the algorithm properly shrinks the window
    # [1, 4, 4] with target 4 should return 1, not 2
    assert_equal 1, SubArray.new([1, 4, 4], 4).min_size
  end

  def test_multiple_valid_subarrays
    # [2, 3, 1, 2, 4, 3] with target 7
    # Valid subarrays: [2,3,1,2] (sum=8), [4,3] (sum=7), [3,1,2,4] (sum=10)
    # Should return 2 (shortest: [4,3])
    assert_equal 2, SubArray.new([2, 3, 1, 2, 4, 3], 7).min_size
  end

  def test_all_elements_equal
    assert_equal 2, SubArray.new([3, 3, 3, 3], 6).min_size
    assert_equal 3, SubArray.new([3, 3, 3, 3], 9).min_size
    assert_equal 0, SubArray.new([3, 3, 3, 3], 13).min_size
  end

  def test_increasing_sequence
    assert_equal 2, SubArray.new([1, 2, 3, 4, 5], 6).min_size
    assert_equal 3, SubArray.new([1, 2, 3, 3, 3], 7).min_size
  end

  def test_decreasing_sequence
    assert_equal 2, SubArray.new([5, 4, 3, 2, 1], 7).min_size
    assert_equal 3, SubArray.new([5, 3, 3, 2, 1], 9).min_size
  end
end
