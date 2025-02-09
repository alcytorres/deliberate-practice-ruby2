# Write nested loops


# 1. Use a nested loop to convert an array of number pairs into a single flattened array.
# For example, [[1, 3], [8, 9], [2, 16]] becomes [1, 3, 8, 9, 2, 16].

number_pairs = [[1, 3], [8, 9], [2, 16]]
array = []

index1 = 0
while index1 < number_pairs.length
  pair = number_pairs[index1]
  index2 = 0
  while index2 < pair.length
    array << pair[index2]
    index2 += 1
  end
  index1 += 1
end
p array


# 2. Use a nested loop with two arrays of strings to create a new array of strings with each string combined.
# For example, ["a", "b", "c"] and ["d", "e", "f", "g"] becomes ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"].

letters1 = ["a", "b", "c"]
letters2 = ["d", "e", "f", "g"]
combined_letters = []

index1 = 0
while index1 < letters1.length
  first_letter = letters1[index1]
  index2 = 0
  while index2 < letters2.length
    combined_letters << first_letter + letters2[index2]
    index2 += 1
  end
  index1 += 1
end
p combined_letters



# 3. Use a nested loop with one array of strings to create a new array that contains every combination of each string with every other string in the array.
# For example, ["a", "b", "c", "d"] becomes ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"].
letters = ["a", "b", "c", "d"]
array = []

index1 = 0
while index1 < letters.length
  first_letter = letters[index1]    #  first_letter = a
  index2 = 0
  while index2 < letters.length     # 0 is less than 4, continue
    if first_letter != letters[index2]
      array << first_letter + letters[index2]
    end
    index2 += 1
  end
  index1 +=1
end
p array



# 4 REDO. Use a nested loop to find the largest product of any two different numbers within a given array.
# For example, [5, -2, 1, -9, -7, 2, 6] becomes 63.
numbers = [5, -2, 1, -9, -7, 2, 6]
max_product = numbers[0] * numbers[1]

index1 = 0
while index1 < numbers.length
  current_number = numbers[index1]
  index2 = 0
  while index2 < numbers.length
    if index1 != index2
      other_number = numbers[index2]
      product = current_number * other_number
      if product > max_product
        max_product = product
      end
    end
    index2 += 1
  end
  index1 += 1
end
p max_product



# 5. Use a nested loop to compute the sum of all the numbers in an array of number pairs.
# For example, [[1, 3], [8, 9], [2, 16]] becomes 39.
pairs = [[1, 3], [8, 9], [2, 16]]
sum = 0
index1 = 0
while index1 < pairs.length
  current_value = pairs[index1]
  index2 = 0
  while index2 < current_value.length
    sum = sum + current_value[index2]
    index2 += 1
  end
  index1 += 1
end

pp sum


# 6. Use a nested loop with two arrays of numbers to create a new array of the sums of each combination of numbers.
# For example, [1, 2] and [6, 7, 8] becomes [7, 8, 9, 8, 9, 10].


# Solution using two while loops
nums1 = [1, 2]
nums2 = [6, 7, 8]
number_sums = []

index1 = 0
while index1 < nums1.length
  index2 = 0
  while index2 < nums2.length
    number_sums << nums1[index1] + nums2[index2]
    index2 += 1
  end
  index1 += 1
end
p number_sums


# # Solution using the each method
# nums1 = [1, 2]
# nums2 = [6, 7, 8]
# numbers_sum = []

# nums1.each do |num1|
#   nums2.each do |num2|
#     numbers_sum << num1 + num2
#   end
# end
# p numbers_sum


# 7. Use a nested loop with an array of numbers to compute an array with every combination of products from each number.
# For example, [2, 8, 3] becomes [4, 16, 6, 16, 64, 24, 6, 24, 9].

nums = [2, 8, 3]
number_product = []

index1 = 0
while index1 < nums.length
  index2 = 0
  while index2 < nums.length
    number_product << nums[index1] * nums[index2]
    index2 += 1
  end
  index1 += 1
end
p number_product


# 7.1 Use a nested loop with an array of numbers to compute an array with product of every pair of distinct numbers from a given array.
# For example, [2, 8, 3] becomes [16, 6, 16, 24, 6, 24].


# Solution
nums = [2, 8, 3]
number_product = []

index1 = 0
while index1 < nums.length
  index2 = 0
  while index2 < nums.length
    if nums[index1] != nums[index2]
      number_product << nums[index1] * nums[index2]
    end
    index2 += 1
  end
  index1 += 1
end
p number_product


# 8. Use a nested loop to find the largest sum of any two different numbers within an array.
# For example, [1, 8, 3, 10] becomes 18.

nums = [1, 8, 3, 10]
max_sum = nums[0] + nums[1]

index1 = 0
while index1 < nums.length
  index2 = 0
  while index2 < nums.length
    if nums[index1] != nums[index2]
      current_sum = nums[index1] + nums[index2]
      if current_sum > max_sum
        max_sum = current_sum
      end
    end
    index2 += 1
  end
  index1 += 1
end
p max_sum



# 9. Use nested loops with an array of numbers to compute a new array containing the first two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.
# For example, [2, 5, 3, 1, 0, 7, 11] becomes [3, 7].

nums = [2, 5, 3, 1, 0, 7, 11]
result = false

index1 = 0
while index1 < nums.length
  index2 = 0
  while index2 < nums.length
    if nums[index1] != nums[index2] && nums[index1] + nums[index2] == 10
      result = [ nums[index1], nums[index2] ]
      break
    end
    index2 += 1
  end
  index1 += 1
  break if result
end
p result


# Solution
nums = [2, 5, 3, 1, 0, 7, 11]
result = false                  # Initialize result as false (no valid pair found yet)

index1 = 0                      # Start with the first index for the outer loop
while index1 < nums.length      # Loop through each element in the array using index1
  index2 = 0                    # For each index1, start a new inner loop with index2
  while index2 < nums.length    # Loop through each element in the array using index2
    if nums[index1] != nums[index2] && nums[index1] + nums[index2] == 10
         # Check two conditions:
         # 1. Ensure we're not comparing the same element (nums[index1] != nums[index2])
         # 2. Check if the sum of the two distinct numbers equals 10 (nums[index1] + nums[index2] == 10)
      result = [ nums[index1], nums[index2] ]  # Store the pair that sums to 10 in result
      break   # Exit the inner loop as the valid pair has been found
    end
    index2 += 1  # Move to the next index in the inner loop
  end
  index1 += 1  # Move to the next index in the outer loop
  break if result  # If a valid pair has been found, exit the outer loop early
end

p result  # Print the resulting pair or false if no valid pair exists



# 10. Use a nested loop to convert an array of string arrays into a single string.
# For example, [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]] becomes "amanaplanacanalpanama"

# Solution
nested_words = [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]]
combined_word = ""

index1 = 0
while index1 < nested_words.length
  index2 = 0
  while index2 < nested_words[index1].length
    combined_word << nested_words[index1][index2]
    index2 += 1
  end
  index1 += 1
end

p combined_word


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


# Solution
strings = [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]]
#         "amanaplanacanalpanama"
combined_strings = ""
strings.each do |array|
  array.each do |string|
    combined_strings << string
  end
end

p combined_strings
