# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'array_duplicate'
######################################
# Given an integer array nums, return true if any value appears at least twice in the array,
# and return false if every element is distinct.
#
# Example 1:
# Input: nums = [1,2,3,1]
# Output: true
#
# Example 2:
# Input: nums = [1,2,3,4]
# Output: false
#
######################################
class TestArrayDuplicate < Minitest::Test
  def setup
    ####
  end

  def test_empty_array
    assert_equal 'Provide a non-empty array', Duplicate.new([]).present?
  end

  def test_array_with_length_one
    assert_equal false, Duplicate.new([2]).present?
  end

  def test_array_with_length_two
    assert_equal false, Duplicate.new([1, 2]).present?
    assert_equal true, Duplicate.new([2, 2]).present?
  end

  def test_array_with_length_four
    assert_equal true, Duplicate.new([1, 2, 2, 4]).present?
    assert_equal false, Duplicate.new([2, 1, 8, 3]).present?
    assert_equal true, Duplicate.new([2, 1, 3, 3]).present?
  end

  def test_array_with_length_six
    assert_equal true, Duplicate.new([8, 4, 1, 2, 4]).present?
    assert_equal false, Duplicate.new([2, 1, 8, 3, 9]).present?
    assert_equal false, Duplicate.new([2, 1, 3, 4, 6]).present?
    assert_equal true, Duplicate.new([2, 1, 3, 4, 2]).present?
  end

  def test_array_with_length_ten
    assert_equal true, Duplicate.new([8, 4, 1, 2, 14, 11, 34, 56, 7, 8]).present?
    assert_equal false, Duplicate.new([2, 1, 8, 3, 9, 4, 7, 6, 0, 12, 51]).present?
  end
end
