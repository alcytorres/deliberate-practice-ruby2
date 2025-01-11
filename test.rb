# # Task

# # The provided code stub reads two integers from STDIN,  and . Add code to print three lines where:

# # The first line contains the sum of the two numbers.
# # The second line contains the difference of the two numbers (first - second).
# # The third line contains the product of the two numbers.

# a = 10
# b = 7
# def arithmetic(a, b)
#   sum = a + b
#   difference = a - ba
#   prodcut = a * b
# end


# #–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# # Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

# # Example 1:

# # Input: nums = [1,2,3,1]
# # Output: true
# # Example 2:

# # Input: nums = [1,2,3,4]
# # Output: false
# # Example 3:

# # Input: nums = [1,1,1,3,3,4,3,2,4,2]
# # Output: true


# # Decomposition
# # # need to iterate through each number --> .each do ||
# # need to use an conditional to check for duplicates
# #




# # Imagine we have a method that calculates the sum of two numbers.
# def add_numbers(a, b)
#   # Simple log statement before the calculation
#   puts "DEBUG: add_numbers called with a=#{a}, b=#{b}"

#   result = a + b

#   # Another log statement after the calculation
#   puts "DEBUG: result of add_numbers is #{result}"

#   result
# end

# # Somewhere in our code, something unexpected happens:
# sum = add_numbers(10, 5)
# # Output on the console would show:
# # DEBUG: add_numbers called with a=10, b=5
# # DEBUG: result of add_numbers is 15







# Problem 1: Write a function that takes in an array and returns all 2-element combinations.
def two_element_combinations(array)
  array.combination(2)
end

combo_array = ['a', 'b', 'c']
p two_element_combinations(combo_array)
# Output: [["a", "b"], ["a", "c"], ["b", "c"]]



# Problem 4: Handle edge case where combination length exceeds array size.
def oversized_combination(array, n)
  array.combination(n).to_a
end

nums = [1, 2]
p oversized_combination(nums, 3)
# Output: [] (no combinations possible)

