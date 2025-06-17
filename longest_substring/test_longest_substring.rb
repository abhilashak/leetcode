# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'longest_substring'
#################################
## Example 1:
# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.
#################################
class TestLongestSubstring < Minitest::Test
  def setup
    ####
  end

  def test_empty_array
    assert_equal 0, Substring.new('').longest
  end

  def test_array_with_length_one
    assert_equal 1, Substring.new('a').longest
  end

  def test_array_with_length_two
    assert_equal 2, Substring.new('ab').longest
    assert_equal 1, Substring.new('aa').longest
  end

  def test_array_with_length_three
    assert_equal 3, Substring.new('abc').longest
    assert_equal 2, Substring.new('aab').longest
    assert_equal 1, Substring.new('aaa').longest
  end

  def test_array_with_length_four
    assert_equal 4, Substring.new('abcd').longest
    assert_equal 3, Substring.new('aabc').longest
    assert_equal 2, Substring.new('aaba').longest
    assert_equal 2, Substring.new('abab').longest
    assert_equal 2, Substring.new('aabb').longest
    assert_equal 1, Substring.new('aaaa').longest
  end

  def test_array_with_length_six
    assert_equal 3, Substring.new('abcabc').longest  # "abc" substring repeats
    assert_equal 6, Substring.new('abcdef').longest  # all unique characters - entire string
    assert_equal 2, Substring.new('aabbcc').longest  # pairs of duplicates
  end

  # Examples given
  def test_example_case_one
    # Example 1 from problem: "abcabcbb" should return 3 ("abc")
    assert_equal 3, Substring.new('abcabcbb').longest
  end

  def test_example_case_two
    # Example 2 from problem: "bbbbb" should return 1 ("b")
    assert_equal 1, Substring.new('bbbbb').longest
  end

  def test_example_case_three
    # Example 3 from problem: "pwwkew" should return 3 ("wke")
    assert_equal 3, Substring.new('pwwkew').longest
  end

  def test_mixed_characters_with_symbols
    # Test with letters, digits, symbols and spaces
    assert_equal 7, Substring.new('abc123!@#').longest  # all unique
    assert_equal 4, Substring.new('a1!a2@b').longest    # "1!a2" or "a2@b"
    assert_equal 3, Substring.new('a b c a').longest    # "a b" or "b c"
  end

  def test_longer_strings
    # Test with longer strings for performance
    assert_equal 26, Substring.new('abcdefghijklmnopqrstuvwxyz').longest # all alphabet
    assert_equal 10, Substring.new('0123456789').longest # all digits
    assert_equal 6, Substring.new('hello world!!!').longest # "o worl" or similar
  end
end
