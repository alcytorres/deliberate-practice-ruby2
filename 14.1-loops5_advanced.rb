# Write nested loops MANUALLY


# 1. Use a nested loop to convert an array of number pairs into a single flattened array.
# For example, [[1, 3], [8, 9], [2, 16]] becomes [1, 3, 8, 9, 2, 16].



# Solution
number_pairs = [[1, 3], [8, 9], [2, 16]]
#              [1, 3, 8, 9, 2, 16]
array = []

index1 = 0
while index1 < number_pairs.length
  index2 = 0
  while index2 < number_pairs[index1].length
    array << number_pairs[index1][index2]
    index2 += 1
  end
  index1 += 1
end
# p array


# Solution
# number_pairs = [[1, 3], [8, 9], [2, 16]]
# #              [1, 3, 8, 9, 2, 16]
# flattened_numbers = []

# index1 = 0
# while index1 < number_pairs.length
#   current_pair = number_pairs[index1]
#   index2 = 0
#   while index2 < current_pair.length
#     current_number = current_pair[index2]
#     flattened_numbers << current_number
#     index2 += 1
#   end
#   index1 += 1
# end
# p flattened_numbers




# 2. Use a nested loop with two arrays of strings to create a new array of strings with each string combined.
# For example, ["a", "b", "c"] and ["d", "e", "f", "g"] becomes ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"].



# Solution
letters1 = ["a", "b", "c"]
letters2 = ["d", "e", "f", "g"]
#          ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]
combined_letters = []
index1 = 0
while index1 < letters1.length
  index2 = 0
  while index2 < letters2.length
    combined_letters << letters1[index1] + letters2[index2]
    index2 += 1
  end
  index1 += 1
end
# p combined_letters


# Solution
# letters1 = ["a", "b", "c"]
# letters2 = ["d", "e", "f", "g"]
# #          ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]
# combined_letters = []

# index1 = 0
# while index1 < letters1.length
#   first_letter = letters1[index1]
#   index2 = 0
#   while index2 < letters2.length
#     combined_letters << first_letter + letters2[index2]
#     index2 += 1
#   end
#   index1 += 1
# end
# # p combined_letters



# 3. Use a nested loop with one array of strings to create a new array that contains every combination of each string with every other string in the array.
# For example, ["a", "b", "c", "d"] becomes ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"].

letters = ["a", "b", "c", "d"]
#         ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]
result = []


# p result




# Solution
letters = ["a", "b", "c", "d"]
#         ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]
result = []

i1 = 0
while i1 < letters.length
  i2 = 0
  while i2 < letters.length
    if letters[i1] != letters[i2]
      result << letters[i1] + letters[i2]
    end
    i2 += 1
  end
  i1 += 1
end
# p result



# Solution
# letters = ["a", "b", "c", "d"]
# #         ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]
# result = []

# index1 = 0
# while index1 < letters.length
#   first_letter = letters[index1]    #  first_letter = a
#   index2 = 0
#   while index2 < letters.length     # 0 is less than 4, continue
#     second_letter = letters[index2]
#     if first_letter != second_letter
#       result << first_letter + second_letter
#     end
#     index2 += 1
#   end
#   index1 +=1
# end
# p result



# 4 REDO. Use a nested loop to find the largest product of any two different numbers within a given array.
# For example, [5, -2, 1, -9, -7, 2, 6] becomes 63.

nums = [5, -2, 1, -9, -7, 2, 6]
#         63
max_product = nums[0] * nums[1]


# p max_product




# Solution
nums = [5, -2, 1, -9, -7, 2, 6]
#         63
max_product = nums[0] * nums[1]

i1 = 0
while i1 < nums.length
  i2 = 0
  while i2 < nums.length
    if nums[i1] != nums[i2]
      current_product = nums[i1] * nums[i2]
      if current_product > max_product
        max_product = current_product
      end
    end
    i2 += 1
  end
  i1 += 1
end
# p max_product



# Solution
nums = [5, -2, 1, -9, -7, 2, 6]
#         63
max_product = nums[0] * nums[1]

index1 = 0
while index1 < nums.length
  current_number = nums[index1]
  index2 = 0
  while index2 < nums.length
    if index1 != index2
      other_number = nums[index2]
      product = current_number * other_number
      if product > max_product
        max_product = product
      end
    end
    index2 += 1
  end
  index1 += 1
end
# p max_product



# 5. Use a nested loop to compute the sum of all the numbers in an array of number pairs.
# For example, [[1, 3], [8, 9], [2, 16]] becomes 39.

pairs = [[1, 3], [8, 9], [2, 16]]
#       39
sum = 0




# Solution
# pairs = [[1, 3], [8, 9], [2, 16]]
# #       39
# sum = 0

# index1 = 0
# while index1 < pairs.length
#   index2 = 0
#   while index2 < pairs[index1].length
#     sum += pairs[index1][index2]
#     index2 += 1
#   end
#   index1 += 1
# end
# p sum


# Solution
# pairs = [[1, 3], [8, 9], [2, 16]]
# #       39
# sum = 0

# index1 = 0
# while index1 < pairs.length
#   current_pair = pairs[index1]
#   index2 = 0
#   while index2 < current_pair.length
#     sum = sum + current_pair[index2]
#     index2 += 1
#   end
#   index1 += 1
# end
# p sum


# 6. Use a nested loop with two arrays of numbers to create a new array of the sums of each combination of numbers.
# For example, [1, 2] and [6, 7, 8] becomes [7, 8, 9, 8, 9, 10].

nums1 = [1, 2]
nums2 = [6, 7, 8]
#       [7, 8, 9, 8, 9, 10]
nums_sum = []


# p nums_sum



# Solution using two while loops
nums1 = [1, 2]
nums2 = [6, 7, 8]
#       [7, 8, 9, 8, 9, 10]
nums_sum = []

i1 = 0
while i1 < nums1.length
  i2 = 0
  while i2 < nums2.length
    nums_sum << nums1[i1] + nums2[i2]
    i2 += 1
  end
  i1 += 1
end
# p nums_sum


# Solution
# numbers1 = [1, 2]
# numbers2 = [6, 7, 8]
# numbers_sum = []

# index1 = 0
# while index1 < numbers1.length
#   first_number = numbers1[index1]
#   index2 = 0
#   while index2 < numbers2.length
#     second_number = numbers2[index2]
#     numbers_sum << first_number + second_number
#     index2 += 1
#   end
#   index1 += 1
# end

# p numbers_sum


# 7. Use a nested loop with an array of numbers to compute an array with every combination of products from each number.
# For example, [2, 8, 3] becomes [4, 16, 6, 16, 64, 24, 6, 24, 9].

nums = [2, 8, 3]
#      [4, 16, 6, 16, 64, 24, 6, 24, 9]
nums_product = []


# p nums_product



# Solution
nums = [2, 8, 3]
#      [4, 16, 6, 16, 64, 24, 6, 24, 9]
nums_product = []

i1 = 0
while i1 < nums.length
  i2 = 0
  while i2 < nums.length
      nums_product << nums[i1] * nums[i2]
    i2 += 1
  end
  i1 += 1
end
# p nums_product



# 7.1 Use a nested loop with an array of numbers to compute an array with product of every pair of distinct numbers from a given array.
# For example, [2, 8, 3] becomes [16, 6, 16, 24, 6, 24].

nums = [2, 8, 3]
#      [16, 6, 16, 24, 6, 24]
nums_product = []


# p nums_product



# Solution
nums = [2, 8, 3]
#      [16, 6, 16, 24, 6, 24]
nums_product = []

i1 = 0
while i1 < nums.length
  i2 = 0
  while i2 < nums.length
    if nums[i1] != nums[i2]
      nums_product << nums[i1] * nums[i2]
    end
    i2 += 1
  end
  i1 += 1
end
# p nums_product



# 8. Use a nested loop to find the largest sum of any two different numbers within an array.
# For example, [1, 8, 3, 10] becomes 18.

nums = [1, 8, 3, 10]
#      18
max_sum = nums[0] + nums[1]


# p max_sum




# Solution
nums = [1, 8, 3, 10]
#      18
max_sum = nums[0] + nums[1]

i1 = 0
while i1 < nums.length
  i2 = 0
  while i2 < nums.length
    if nums[i1] != nums[i2]
      current_sum = nums[i1] + nums[i2]
      if current_sum > max_sum
        max_sum = current_sum
      end
    end
    i2 += 1
  end
  i1 += 1
end

# p max_sum



# 9. Use nested loops with an array of numbers to compute a new array containing the first two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.
# For example, [2, 5, 3, 1, 0, 7, 11] becomes [3, 7].

nums = [2, 5, 3, 1, 0, 7, 11]
#      [3, 7]
result = false


# p result




# Solution
nums = [2, 5, 3, 1, 0, 7, 11]
#      [3, 7]
result = false

i1 = 0
while i1 < nums.length
  i2 = 0
  while i2 < nums.length
    if nums[i1] != nums[i2] && nums[i1] + nums[i2] == 10
      result = [nums[i1], nums[i2]]
      break
    end
    i2 += 1
  end
  i1 += 1
  break if result
end

# p result



# Solution
nums = [2, 5, 3, 1, 0, 7, 11]
# Creates an array of numbers to work with
#      [3, 7]   Expected output:
result = false
# Sets result to false as a starting point (if no pair is found, this is what we return)

index1 = 0
# Starts the first loop with index1 at 0 (to look at each number in the array)

while index1 < nums.length
# Keeps looping through the array as long as index1 is less than the array’s length
  index2 = 0
  # Starts a second loop with index2 at 0 (to compare each number with every other number)

  while index2 < nums.length
  # Loops through the array again, checking every number against the one at index1
    if nums[index1] != nums[index2] && nums[index1] + nums[index2] == 10
    # Checks two things:
       # 1. The numbers at index1 and index2 aren’t the same (no using a number with itself)
       # 2. The numbers add up to 10
      result = [nums[index1], nums[index2]]
      # If true, stores the two numbers (not their sum!) in an array as the result
      break
      # Stops the inner loop since we found a pair
    end
    index2 += 1
        # Moves to the next number in the inner loop
  end
  index1 += 1
    # Moves to the next number in the outer loop
  break if result
    # Stops the outer loop if we’ve found a pair (result isn’t false anymore)
end

# p result
# Prints the result (either [num1, num2] or false)




# Outer Loop: index1 = 2 (number 3)
# index1 < 7 is true.
# index2 = 0.

# Inner Loop:
# index2 = 0: nums[2] = 3, nums[0] = 2. Check: 3 != 2 (true), 3 + 2 = 5.
# index2 = 1: nums[2] = 3, nums[1] = 5. Check: 3 != 5 (true), 3 + 5 = 8.
# index2 = 2: nums[2] = 3, nums[2] = 3. Check: 3 != 3 (false), skip.
# index2 = 3: nums[2] = 3, nums[3] = 1. Check: 3 != 1 (true), 3 + 1 = 4.
# index2 = 4: nums[2] = 3, nums[4] = 0. Check: 3 != 0 (true), 3 + 0 = 3.
# index2 = 5: nums[2] = 3, nums[5] = 7. Check: 3 != 7 (true), and 3 + 7 = 10!
# Condition is true!
# result = [nums[2], nums[5]] = [3, 7].
# break stops the inner loop.

# After Inner Loop:
# index1 += 1 (now index1 = 3).
# break if result: result is [3, 7] (not false), so outer loop breaks.



# Extended Solution
# numbers = [2, 5, 3, 1, 0, 7, 11]
# result = false
# index1 = 0
# while index1 < numbers.length
#   current_number = numbers[index1]
#   index2 = 0
#   while index2 < numbers.length
#     if index1 != index2
#       other_number = numbers[index2]
#       if current_number + other_number == 10 && result == false
#         result = [current_number, other_number]
#       end
#     end
#     index2 += 1
#   end
#   index1 += 1
# end
# p result


# 10. Use a nested loop to convert an array of string arrays into a single string.
# For example, [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]] becomes "amanaplanacanalpanama"

nested_words = [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]]
#              "amanaplanacanalpanama"
combined_word = ""


# p combined_word



# Solution
nested_words = [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]]
#              "amanaplanacanalpanama"
combined_word = ""

i1 = 0
while i1 < nested_words.length
  i2 = 0
  while i2 < nested_words[i1].length
    current_string = nested_words[i1][i2]
    combined_word << current_string
    i2 += 1
  end
  i1 += 1
end
# p combined_word



# # Solution
# nested_words = [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]]
# combined_strings = ""

# index1 = 0
# while index1 < nested_words.length
#   index2 = 0
#   sub_string = nested_words[index1]
#   while index2 < sub_string.length
#     combined_strings << sub_string[index2]
#     index2 += 1
#   end
#   index1 += 1
# end

# p combined_strings


