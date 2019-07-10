# Good morning! Here's your coding interview problem for today.

# This problem was asked by Uber.

# Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.

# For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].

# Follow-up: what if you can't use division?


class Dcp2
  def self.make_product_array(original_array)
    new_array = []
    original_array.each do |n|
      new_array << (original_array - [n]).inject(:*)
    end

    p new_array
  end
end

Dcp2.make_product_array([1, 2, 3, 4, 5])
Dcp2.make_product_array([3, 2, 1])
