# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'product_except_self'
################
# Product of Array Except Self
#
# Given an integer array nums, return an array answer such that answer[i] is equal to
# the product of all the elements of nums except nums[i].
# The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
# You must write an algorithm that runs in O(n) time and without using the division operation.
################
class TestProductExceptSelf < Minitest::Test
  def set_up
    ###
  end

  def test_empty_array
    assert_equal 'Provide an array of length atleast two', Numbers.new([]).product_except_self
    assert_equal 'Provide an array of length atleast two', Numbers.new([]).product_except_self_optimized
  end

  def test_array_of_length_one
    assert_equal 'Provide an array of length atleast two', Numbers.new([4]).product_except_self
    assert_equal 'Provide an array of length atleast two', Numbers.new([4]).product_except_self_optimized
  end

  def test_array_of_length_two
    assert_equal [3, 4], Numbers.new([4, 3]).product_except_self
    assert_equal [6, 5], Numbers.new([5, 6]).product_except_self

    # Test optimized version
    assert_equal [3, 4], Numbers.new([4, 3]).product_except_self_optimized
    assert_equal [6, 5], Numbers.new([5, 6]).product_except_self_optimized
  end

  def test_array_of_length_three
    assert_equal [6, 3, 2], Numbers.new([1, 2, 3]).product_except_self
    assert_equal [15, 20, 12], Numbers.new([4, 3, 5]).product_except_self

    # Test optimized version
    assert_equal [6, 3, 2], Numbers.new([1, 2, 3]).product_except_self_optimized
    assert_equal [15, 20, 12], Numbers.new([4, 3, 5]).product_except_self_optimized
  end

  def test_array_of_length_four
    assert_equal [70, 140, 56, 40], Numbers.new([4, 2, 5, 7]).product_except_self
    assert_equal [216, 54, 36, 24], Numbers.new([1, 4, 6, 9]).product_except_self

    # Test optimized version
    assert_equal [70, 140, 56, 40], Numbers.new([4, 2, 5, 7]).product_except_self_optimized
    assert_equal [216, 54, 36, 24], Numbers.new([1, 4, 6, 9]).product_except_self_optimized
  end

  def test_leetcode_examples
    # Example 1: [1,2,3,4] -> [24,12,8,6]
    assert_equal [24, 12, 8, 6], Numbers.new([1, 2, 3, 4]).product_except_self_optimized

    # Example 2: [-1,1,0,-3,3] -> [0,0,9,0,0]
    assert_equal [0, 0, 9, 0, 0], Numbers.new([-1, 1, 0, -3, 3]).product_except_self_optimized
  end

  def test_both_methods_give_same_results
    test_cases = [
      [4, 3],
      [1, 2, 3],
      [4, 2, 5, 7],
      [1, 4, 6, 9],
      [-1, 1, 0, -3, 3],
      [2, 3, 4, 5]
    ]

    test_cases.each do |nums|
      original_result = Numbers.new(nums).product_except_self
      optimized_result = Numbers.new(nums).product_except_self_optimized
      assert_equal original_result, optimized_result, "Results don't match for #{nums}"
    end
  end
end
