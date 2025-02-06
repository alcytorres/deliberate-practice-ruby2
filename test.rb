
# 161
# 161/2 = 80 reamainder of 1
# 80/2 = 40 reamainder of 0
# 40/2 = 20 reamainder of 0
# 20/2 = 10 reamainder of 0
# 10/2 = 5 remainder of 0
# 5/2 = 2 remainder of 1
# 2/2 = 1  remainder of 0
# 1/2 = 0 reaminder of 1
# 10100001


# 71
# 71/2 = 35 => 1
# 35/2 = 17 =>1
# 17/2 = 8 => 1
# 8/2 = 4 => 0
# 4/2 = 2 => 0
# 2/2 = 1 => 0
# 1/2 = 0 => 1
# 1000111




# # Problem 2: Write a function that multiplies each element in an array by its index.

# def multiply_by_index(array)
#   array.map.with_index { |element, index| element * index }
# end

# nums = [2, 3, 4]
# p multiply_by_index(nums)
# # Output: [0, 3, 8]

# # Problem 2: Write a function that multiplies each element in an array by its index.

# def multiply_by_index(array)
#   array.each_with_index { |element, index| element * index }
# end

# nums = [2, 3, 4]
# p multiply_by_index(nums)
# # Output: [0, 3, 8]






# # Problem 4: Generate the first n multiples of 3 in an array using until.

# def multiples_of_three(n)
#   result = []
#   count = 1
#   until count > n
#     result[count - 1] = 3 * count
#     count += 1
#   end
#   result
# end

# puts multiples_of_three(5).inspect
# # Output: [3, 6, 9, 12, 15]


# def string_combiner(s1, s2, s3)
#   "#{s1} #{s2} #{s3}"
# end

# words = ["sky", "fly", "run"]
# p string_combiner(*words) # Use the splat operator (*) to unpack the array



# Example 1: Unpacking an array into arguments when calling a method.
def add(a, b, c)
  a + b + c  # Sums three numbers
end

numbers = [1, 2, 3]
p add(*numbers)  # The '*' before 'numbers' expands the array into 1, 2, 3 as separate arguments.
# Expected Output: 6


# Example 1: Unpacking an array into arguments when calling a method.
def add(a, b, c)
  a + b + c  # Sums three numbers
end

numbers = [1, 2, 3]
p add(1, 2, 3)  # The '*' before 'numbers' expands the array into 1, 2, 3 as separate arguments.
# Expected Output: 6