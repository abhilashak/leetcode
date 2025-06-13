# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'two_sum_1'

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
  def setup
    ####
  end

  def test_array_is_an_empty_array
    assert_equal 'Provide an array with length 2 or more elements', two_sum([], 9)
  end

  def test_array_with_length_one
    assert_equal 'Provide an array with length 2 or more elements', two_sum([9], 9)
  end
end
