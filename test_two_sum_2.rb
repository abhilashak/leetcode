# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'two_sum_2'

###############################
# This is the test case for finding the index of two numbers in an array
# such that adding both numbers should be equal to the target number provided
#
#  Ex:
#    two_sum(num, target)
#    num: [23, 4, 8, 92], tatget: 12
#    output: [1, 2] => index of the two numbers whose sum is equal to target
##############################
class TestTwoSum < Minitest::Test
  def setup; end

  def test_array_is_an_empty_array
    assert_equal 'Provide an array with length 2 or more elements', TwoSum.new([], 9).indices
  end

  def test_array_with_length_one
    assert_equal 'Provide an array with length 2 or more elements', TwoSum.new([2], 9).indices
  end

  def test_array_with_length_two
    assert_equal [0, 1], TwoSum.new([7, 11], 18).indices
  end

  def test_array_with_length_three
    assert_equal [1, 2], TwoSum.new([7, 11, 8], 19).indices
  end

  def test_array_with_length_four
    assert_equal [1, 3], TwoSum.new([9, 3, 4, 8], 11).indices
  end

  def test_array_with_length_ten
    assert_equal [7, 8], TwoSum.new([9, 3, 9, 8, 23, 20, 19, 5, 30, 14], 35).indices
  end
end
