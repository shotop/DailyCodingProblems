# Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

# Bonus: Can you do this in one pass?

class Dcp1
  def self.add_up?(list, k)
    list.permutation(2).any? { |tuple| tuple.inject(0, :+) == k }
  end
end


Dcp1.add_up?([10, 15, 3, 7], 17)
