# Write nested loops


# 1. Use a nested loop to convert an array of number pairs into a single flattened array.
#    For example, [[1, 3], [8, 9], [2, 16]] becomes [1, 3, 8, 9, 2, 16].
number_pairs = [[1, 3], [8, 9], [2, 16]]
flattened_numbers = []
index1 = 0
while index1 < number_pairs.length
  current_pair = number_pairs[index1]
  index2 = 0
  while index2 < current_pair.length
    current_number = current_pair[index2]
    flattened_numbers << current_number
    index2 += 1
  end
  index1 += 1
end
p flattened_numbers

number_pairs = [[1, 3], [8, 9], [2, 16]]
flattened_numbers = []
number_pairs.each do |current_pair|
  current_pair.each do |current_number|
    flattened_numbers << current_number
  end
end
p flattened_numbers


# 2. Use a nested loop with two arrays of strings to create a new array of strings with each string combined.
#    For example, ["a", "b", "c"] and ["d", "e", "f", "g"] becomes ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"].

letters1 = ["a", "b", "c"]
letters2 = ["d", "e", "f", "g"]
combined_letters = []
letters1.each do |letters1|
  letters2.each do |letters2|
    combined_letters << letters1 + letters2
  end
end

p combined_letters


# 3. Use a nested loop with one array of strings to create a new array that contains every combination of each string with every other string in the array.
#    For example, ["a", "b", "c", "d"] becomes ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"].

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


# 6. Use a nested loop with two arrays of numbers to create a new array of the sums of each combination of numbers.
#    For example, [1, 2] and [6, 7, 8] becomes [7, 8, 9, 8, 9, 10].


# 7. Use a nested loop with an array of numbers to compute an array with every combination of products from each number.
#    For example, [2, 8, 3] becomes [4, 16, 6, 16, 64, 24, 6, 24, 9].


# 8. Use a nested loop to find the largest sum of any two different numbers within an array.
#    For example, [1, 8, 3, 10] becomes 18.


# 9. Use nested loops with an array of numbers to compute a new array containing the first two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.
#    For example, [2, 5, 3, 1, 0, 7, 11] becomes [3, 7].


# 10. Use a nested loop to convert an array of string arrays into a single string.
#     For example, [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]] becomes "amanaplanacanalpanama".


