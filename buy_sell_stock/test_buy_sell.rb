# frozen_string_literal: true

require 'minitest/autorun'
#####################
##
#####################
class TestBuySell < Minitest::Test
  def setup
    ####
  end

  # ex: []
  def test_array_is_an_empty_array
    assert_equal 'Provide an array of two or more elements', []
  end
end
