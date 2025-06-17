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
    distinct_char = []
    @string.each_char.with_index do |char, i|
      max_count_hash[i] ||= 1 # escape nil condition
      distinct_char << char unless distinct_char.include?(char)
      next if @string[i] == @string[i + 1]

      @string.chars[(i + 1)..].each do |c|
        break if distinct_char.include?(c)

        distinct_char << c # update distinct char
        max_count_hash[i] += 1
      end
    end

    max_count_hash.values.max
  end
end
