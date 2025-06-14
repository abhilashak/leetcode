# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'array_duplicate'
######################################
#
#
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
end
