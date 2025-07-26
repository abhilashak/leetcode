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
  end
end
