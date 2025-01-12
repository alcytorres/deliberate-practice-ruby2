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




def print_values(hash)
  hash.values.each {|value| puts value}
end

movie = { title: "Matrix", year: 1999, rating: 8.7 }
print_values(movie)
# Output (each value on its own line):
# Matrix
# 1999
# 8.7
