# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'buy_sell_1'
#####################
##
#####################
class TestBuySellStock < Minitest::Test
  def setup
    ####
  end

  def create_array(length)
    Array.new(length) { rand(1..100) }
  end

  # ex: BuySellStock.new([]).max_profit
  def test_array_is_an_empty_array
    assert_equal 'Provide an array with 1 or more elements', BuySellStock.new([]).max_profit
  end

  def test_array_with_length_one
    assert_equal 0, BuySellStock.new([1]).max_profit
  end

  def test_array_with_length_two
    assert_equal 2, BuySellStock.new([1, 3]).max_profit
    assert_equal 0, BuySellStock.new([5, 3]).max_profit
  end

  def test_array_with_length_three
    assert_equal 5, BuySellStock.new([1, 3, 6]).max_profit
    assert_equal 0, BuySellStock.new([5, 3, 2]).max_profit
  end

  def test_array_with_length_five
    assert_equal 22, BuySellStock.new([1, 3, 6, 23, 2]).max_profit
    assert_equal 12, BuySellStock.new([15, 25, 8, 20]).max_profit
  end

  def test_array_with_length_seven
    assert_equal 11, BuySellStock.new([10, 13, 16, 9, 18, 3, 14]).max_profit
    assert_equal 12, BuySellStock.new([9, 13, 6, 16, 9, 18, 12]).max_profit
  end
end
