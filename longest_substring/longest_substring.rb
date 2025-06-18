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
    @substring_lengths = []
    # store distinct chars for each iteration then clear it
    @distinct_chars = []
  end

  def longest
    return 0 if @string.empty?

    return 1 if @string.length == 1

    find_substring
  end

  private

  def find_substring
    @string.each_char.with_index do |char, char_index|
      # Duplicate char detected
      if @distinct_chars.include?(char)
        start_new_substring(char)
        next
      else # fresh char detected
        update_fresh_char(char, char_index)
      end
    end

    @substring_lengths.max
  end

  def start_new_substring(char)
    # store the current substring length
    @substring_lengths << @distinct_chars.size

    # update the distinct chars avoiding old duplicate char and adding current
    # duplicate char that is detected
    @distinct_chars = @distinct_chars[(@distinct_chars.index(char) + 1)..]
    @distinct_chars << char
  end

  def update_fresh_char(char, char_index)
    @distinct_chars << char

    last_char = char_index == @string.length - 1
    # Check if this is the last character
    return unless last_char

    # Handle end of string - store the final substring length
    @substring_lengths << @distinct_chars.size
  end
end
