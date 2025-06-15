# frozen_string_literal: true

#############################
#
# Given an integer array nums, return true if any value appears at least twice in the array,
# and return false if every element is distinct.

# Example 1:
# Input: nums = [1,2,3,1]
# Output: true

# Explanation:
# The element 1 occurs at the indices 0 and 3.

# Example 2:
# Input: nums = [1,2,3,4]
# Output: false

# Explanation:
# All elements are distinct.

# Example 3:
# Input: nums = [1,1,1,3,3,4,3,2,4,2]
# Output: true
#############################
class Duplicate
  def initialize(nums)
    @numbers = nums
  end

  def present?
    return 'Provide a non-empty array' if @numbers.empty?

    found = Set.new
    @numbers.each do |number|
      return true if found.include?(number)

      found.add(number)
    end

    false
  end
end
