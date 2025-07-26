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
end
