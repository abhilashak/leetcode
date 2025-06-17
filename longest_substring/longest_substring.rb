# frozen_string_literal: true

#######################################
# Given a string s, find the length of the longest substring without duplicate characters.

# Example 1:
#   Input: s = "abcabcbb"
#   Output: 3
#   Explanation: The answer is "abc", with the length of 3.

# Example 2:
#   Input: s = "bbbbb"
#   Output: 1
#   Explanation: The answer is "b", with the length of 1.

# Example 3:
#   Input: s = "pwwkew"
#   Output: 3
#   Explanation: The answer is "wke", with the length of 3.
#   Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

# Constraints:
# 0 <= s.length <= 5 * 104
# s consists of English letters, digits, symbols and spaces.
#######################################
class Substring
  def initialize(string)
    @string = string
  end

  def longest
    return 0 if @string.empty?

    return 1 if @string.length == 1

    max_count_hash = {} # calculate max count for each char position
    @string.each_char.with_index do |char, i|
      distinct_char = [char]
      @string.chars[i..].each do |c|
        max_count_hash[i] ||= 1 # escape nil condition

        if distinct_char.include?(c)
          [max_count_hash[i], 1].max # keep the max substring count
        else
          distinct_char << c # update distinct char
          max_count_hash[i] += 1
        end
      end
    end

    max_count_hash.values.max
  end
end
