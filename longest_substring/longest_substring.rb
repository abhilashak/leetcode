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

    longest_substring_length = 0
    @string.each_char.with_index do |_char, i|
      longest_substring_length = if @string[i] == @string[i + 1]
                                   longest_substring_length
                                 else
                                   longest_substring_length + 1
                                 end
    end
    longest_substring_length
  end
end
