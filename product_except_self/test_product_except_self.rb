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
    assert_equal 'Provide an aaray of length atleast two', Numbers.new([]).product_except_self
  end

  def test_array_of_length_one
    assert_equal 'Provide an aaray of length atleast two', Numbers.new([4]).product_except_self
  end

  def test_array_of_length_two
    assert_equal 'Provide an aaray of length atleast two', Numbers.new([4]).product_except_self
  end

  def test_array_of_length_three
    assert_equal 'Provide an aaray of length atleast two', Numbers.new([4]).product_except_self
  end
end
