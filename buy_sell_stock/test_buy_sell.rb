# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'buy_sell'
#####################
##
#####################
class TestBuySellStock < Minitest::Test
  def setup
    ####
  end

  # ex: BuySellStock.new([]).max_profit
  def test_array_is_an_empty_array
    assert_equal 'Provide an array of two or more elements', BuySellStock.new([]).max_profit
  end

  def test_array_with_length_one
    assert_equal 'Provide an array of two or more elements', BuySellStock.new([1]).max_profit
  end
end
