# frozen_string_literal: true

################
# Product of Array Except Self
#
# Given an integer array nums, return an array answer such that answer[i] is equal to
# the product of all the elements of nums except nums[i].
# The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
# You must write an algorithm that runs in O(n) time and without using the division operation.
# Example 1:

# Input: nums = [1,2,3,4]
# Output: [24,12,8,6]
# Example 2:

# Input: nums = [-1,1,0,-3,3]
# Output: [0,0,9,0,0]

# Constraints:

# 2 <= nums.length <= 105
# -30 <= nums[i] <= 30
# The input is generated such that answer[i] is guaranteed to fit in a 32-bit integer.

# Follow up: Can you solve the problem in O(1) extra space complexity? (The output array does not count as extra space for space complexity analysis.)
#
# Ex: Numbers.new([2,3,4]).product_except_self
################
class Numbers
  def initialize(nums)
    @numbers = nums
    @answer = []
  end

  # Original O(n²) time, O(n) space solution
  def product_except_self
    return 'Provide an array of length atleast two' if @numbers.length < 2

    answer = []
    @numbers.each_with_index do |_number, index|
      answer << @numbers.reject.with_index { |_num, i| index == i }.inject(:*)
    end

    answer
  end

  # Optimized O(n) time, O(1) space solution
  def product_except_self_optimized
    return 'Provide an array of length atleast two' if @numbers.length < 2

    calculate_left_products
    multiply_right_products

    @answer
  end

  private

  # STEP 1: Fill @answer[i] with product of all numbers TO THE LEFT of i
  def calculate_left_products
    left_product = 1
    0.upto(@numbers.length - 1) do |i|
      @answer[i] = left_product
      left_product *= @numbers[i] # Update for next iteration
    end
  end

  # STEP 2: Multiply @answer[i] with product of all numbers TO THE RIGHT of i
  def multiply_right_products
    right_product = 1
    (@numbers.length - 1).downto(0) do |i|
      @answer[i] *= right_product
      right_product *= @numbers[i] # Update for next iteration
    end
  end
end
