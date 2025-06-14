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

  def test_array_with_length_one
    assert_equal 'Provide a non-empty array', Duplicate.new([]).present?
  end
end
