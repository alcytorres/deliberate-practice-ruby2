

#------------------------------------------------------------------------------
# Problem 1: Write a function that sorts an array of numbers in ascending order.
# Solution 1
def sort_ascending(numbers)
  numbers.sort
end

nums = [5, 2, 8, 1, 3]
p sort_ascending(nums)
# Output: [1, 2, 3, 5, 8]


# Solution 2
def sort_ascending(numbers)
  numbers.sort { |num| num.even? }
end

nums = [5, 2, 8, 1, 3]
p sort_ascending(nums)

