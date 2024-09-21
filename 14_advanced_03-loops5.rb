# Write nested loops


# 1. Use a nested loop to convert an array of number pairs into a single flattened array.
#    For example, [[1, 3], [8, 9], [2, 16]] becomes [1, 3, 8, 9, 2, 16].


number_pairs = [[1, 3], [8, 9], [2, 16]]
flattened_array = []
number_pairs.each do |current_pair|
  current_pair.each do |current_number|
    flattened_array << current_number
  end
end
p flattened_array


# number_pairs = [[1, 3], [8, 9], [2, 16]]
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
#    For example, ["a", "b", "c"] and ["d", "e", "f", "g"] becomes ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"].


letters1 = ["a", "b", "c"]
letters2 = ["d", "e", "f", "g"]
strings_combined = []
letters1.each do |letter1|
  letters2.each do |letter2|
    strings_combined << letter1 + letter2
  end
end
p strings_combined




# 3. Use a nested loop with one array of strings to create a new array that contains every combination of each string with every other string in the array.
#    For example, ["a", "b", "c", "d"] becomes ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"].


letters = ["a", "b", "c", "d"]
letter_combinations = []
letters.each do |first_letter|
  letters.each do |second_letter|
    if first_letter != second_letter
      letter_combinations << first_letter + second_letter
    end
  end
end
p letter_combinations



letters = ["a", "b", "c", "d"]
letter_combinations = []
letters.each do |first_letter|
  letters.each do |second_letter|
    letter_combinations << first_letter + second_letter unless first_letter == second_letter
  end
end
p letter_combinations



# 4. Use a nested loop to find the largest product of any two different numbers within a given array.
#    For example, [5, -2, 1, -9, -7, 2, 6] becomes 63.


numbers = [5, -2, 1, -9, -7, 2, 6]
max_product = numbers[0] * numbers[1]
numbers.each do |first_number|
  numbers.each do |second_number|
    if first_number != second_number
      current_product = first_number * second_number
      if current_product > max_product
        max_product = current_product
      end
    end
  end
end
p max_product



# 5. Use a nested loop to compute the sum of all the numbers in an array of number pairs.
#    For example, [[1, 3], [8, 9], [2, 16]] becomes 39.



numbers = [[1, 3], [8, 9], [2, 16]]
total = 0
numbers.each do |current_pair|
  current_pair.each do |current_number|
    total += current_number
  end
end
p total

# numbers = [[1, 3], [8, 9], [2, 16]]
# total = 0
# numbers.each do |current_pair|
#   current_pair.each do |current_number|
#     total = total + current_number
#   end
# end
# p total


numbers = [[1, 3], [8, 9], [2, 16]]
total = 0
numbers.each do |number|
  current_sum = number[0] + number[1]
  total += current_sum
end
p total



# 6. Use a nested loop with two arrays of numbers to create a new array of the sums of each combination of numbers.
#    For example, [1, 2] and [6, 7, 8] becomes [7, 8, 9, 8, 9, 10].


numbers1 = [1, 2]
numbers2 = [6, 7, 8]
numbers_sum = []
numbers1.each do |first_number|
  numbers2.each do |second_number|
    numbers_sum << first_number + second_number
  end
end
p numbers_sum


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
#    For example, [2, 8, 3] becomes [4, 16, 6, 16, 64, 24, 6, 24, 9].



numbers = [2, 8, 3]
numbers_array = []
numbers.each do |num1|
  numbers.each do |num2|
    numbers_array << num1 * num2
  end
end

p numbers_array




# 8. Use a nested loop to find the largest sum of any two different numbers within an array.
#    For example, [1, 8, 3, 10] becomes 18.



numbers = [1, 8, 3, 10]
# max_sum =



numbers = [1, 8, 3, 10]
max_sum = numbers[0] + numbers[1]
numbers.each do |num1|
  numbers.each do |num2|
    if num1 != num2
      current_sum = num1 + num2
      if current_sum > max_sum
        max_sum = current_sum
      end
    end
  end
end

p max_sum




# DO THIS PROBLEM

# 9. Use nested loops with an array of numbers to compute a new array containing the first two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.
#    For example, [2, 5, 3, 1, 0, 7, 11] becomes [3, 7].


numbers = [2, 5, 3, 1, 0, 7, 11]
result = false
numbers.each do |num1|
  numbers.each do |num2|
    if num1 != num2 && num1 + num2 == 10
      result = [num1, num2]
      break
    end
  end
  break if result
end
p result



numbers = [2, 5, 3, 1, 0, 7, 11]
result = false  # Initialize result to false

numbers.each do |num1|   # Iterate through each number in the array as num1
  numbers.each do |num2|  # Iterate through each number in the array as num2
    if num1 != num2 && (num1 + num2) == 10  # Check if num1 and num2 are different and their sum is 10
      result = [num1, num2]  # If condition is met, set result to the pair [num1, num2]
      break   # Break the inner loop as the pair is found
    end
  end
  break if result  # Break the outer loop if a pair is found (because result is now truthy)
end

p result  # Print the result, which will be the pair that sums to 10 or false if none is found

# Explanation of: break if result
# This line is crucial. After the inner loop is broken, the outer loop will continue to its next iteration unless it is also explicitly broken. The break if result line checks if result is no longer false (which means a valid pair has been found). If result is truthy (in this case, it will be an array [num1, num2]), the outer loop is also broken, and the program exits the loop structure entirely.




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
#     For example, [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]] becomes "amanaplanacanalpanama".



strings = [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]]
# combined_strings =






strings = [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]]
combined_strings = ""
strings.each do |current_pair|
  current_pair.each do |current_string|
    combined_strings << current_string
  end
end

p combined_strings