#------------------------------------------------------------------------------
# High-importance methods (.each, .map, .select, .sort, .reduce) appear in countless patterns—knowing them well drastically simplifies your solutions.
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Problem 1: Write a function that prints each number of an array.

def print_elements(numbers)

end

numbers = [1, 2, 3]
# print_elements(numbers)
# Output:
# 1
# 2
# 3



# # Solution 1
# def print_elements(numbers)
#   numbers.each { |num| puts num }
# end

# numbers = [1, 2, 3]
# print_elements(numbers)
# # Output:
# # 1
# # 2
# # 3


# # Solution 2
# def print_elements(numbers)
#   numbers.each do |num|
#     p num
#   end
# end

# numbers = [1, 2, 3]
# print_elements(numbers)
# # Output:
# # 1
# # 2
# # 3

#------------------------------------------------------------------------------
# Problem 2: Write a function that prints each key-value pair in a hash.

def print_hash(person)

end

person = { name: "Alice", age: 30 }
# print_hash(person)
# Output:
# name: Alice
# age: 30



# # Solution 1
# def print_hash(person)
#   person.each { |key, value| puts "#{key}: #{value}" }
# end

# person = { name: "Alice", age: 30 }
# print_hash(person)
# # Output:
# # name: Alice
# # age: 30


# # Solution 2
# def print_hash(person)
#   person.each do |key, value|
#     p "#{key} => #{value}"
#   end
# end

# person = { name: "Alice", age: 30 }
# print_hash(person)
# # Output:
# # "name => Alice"
# # "age => 30"


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes an array of numbers and returns a new array where each number is incremented by 1.

def increment_numbers(numbers)

end

numbers = [1, 2, 3]
# p increment_numbers(numbers)
# Output: [2, 3, 4]



# # Solution 1
# def increment_numbers(numbers)
#   numbers.map { |num| num + 1 }
# end

# numbers = [1, 2, 3]
# p increment_numbers(numbers)
# # Output: [2, 3, 4]


# # Solution 2
# def increment_numbers(numbers)
#   numbers.map do |num|
#     num + 1
#   end
# end

# numbers = [1, 2, 3]
# p increment_numbers(numbers)
# # Output: [2, 3, 4]

#------------------------------------------------------------------------------
# Problem 2: Write a function that extracts all keys from a hash.

def extract_keys(hash)

end

data = { a: 1, b: 2, c: 3 }
# p extract_keys(data)
# Output: [:a, :b, :c]



# # Solution
# def extract_keys(hash)
#   hash.map { |key, value| key }
# end

# data = { a: 1, b: 2, c: 3 }
# p extract_keys(data)
# # Output: [:a, :b, :c]

#------------------------------------------------------------------------------
# Problem 3: Write a function that converts all strings in an array to uppercase.

def uppercase_strings(array)

end

words = ["hello", "world"]
# p uppercase_strings(words)
# Output: ["HELLO", "WORLD"]



# # Solution
# def uppercase_strings(array)
#   array.map(&:upcase) # Shortcut for array.map { |str| str.upcase }
# end

# words = ["hello", "world"]
# p uppercase_strings(words)
# # Output: ["HELLO", "WORLD"]

#------------------------------------------------------------------------------
# Problem 4: Write a function that squares all numbers in a nested array.

def square_nested(array_of_arrays)

end

nested = [[1, 2], [3, 4]]
# p square_nested(nested)
# Output: [[1, 4], [9, 16]]



# # Solution
# def square_nested(array_of_arrays)
#   array_of_arrays.map { |arr| arr.map { |n| n * n } }
# end

# nested = [[1, 2], [3, 4]]
# p square_nested(nested)
# # Output: [[1, 4], [9, 16]]


#------------------------------------------------------------------------------
# Problem 1: Write a function that selects all even numbers from an array.

def select_even_numbers(array)

end

nums = [1, 2, 3, 4, 5, 6]
# p select_even_numbers(nums)
# Output: [2, 4, 6]


# # Solution
# def select_even_numbers(array)
#   array.select { |num| num.even? }
# end

# nums = [1, 2, 3, 4, 5, 6]
# p select_even_numbers(nums)
# # Output: [2, 4, 6]

#------------------------------------------------------------------------------
# Problem 2: Write a function that selects all words that start with "a".

def select_words_starting_with_a(words)

end

words = ["apple", "banana", "apricot", "cherry"]
# p select_words_starting_with_a(words)
# Output: ["apple", "apricot"]



# # Solution
# def select_words_starting_with_a(words)
#   words.select { |word| word.start_with?("a") }
# end

# words = ["apple", "banana", "apricot", "cherry"]
# p select_words_starting_with_a(words)
# # Output: ["apple", "apricot"]

#------------------------------------------------------------------------------
# Problem 3: Write a function that selects key-value pairs where the value is greater than 10.

def select_values_greater_than_10(hash)

end

data = { a: 5, b: 15, c: 8, d: 20 }
# p select_values_greater_than_10(data)
# Output: { b: 15, d: 20 }


# # Solution
# def select_values_greater_than_10(hash)
#   hash.select { |key, value| value > 10 }
# end

# data = { a: 5, b: 15, c: 8, d: 20 }
# p select_values_greater_than_10(data)
# # Output: { b: 15, d: 20 }

#------------------------------------------------------------------------------
# Problem 4: Write a function that selects all positive numbers from an array.

def select_positive_numbers(array)

end

nums = [-3, 0, 5, -1, 2]
# p select_positive_numbers(nums)
# Output: [5, 2]


# # Solution
# def select_positive_numbers(array)
#   array.select { |num| num > 0 }
# end

# nums = [-3, 0, 5, -1, 2]
# p select_positive_numbers(nums)
# # Output: [5, 2]


#------------------------------------------------------------------------------
# Problem 1: Write a function that sorts an array of numbers in ascending order.

def sort_ascending(numbers)

end

nums = [5, 2, 8, 1, 3]
# p sort_ascending(nums)
# Output: [1, 2, 3, 5, 8]


# # Solution
# def sort_ascending(numbers)
#   numbers.sort
# end

# nums = [5, 2, 8, 1, 3]
# p sort_ascending(nums)
# # Output: [1, 2, 3, 5, 8]

#------------------------------------------------------------------------------
# Problem 2: Write a function that sorts an array of strings in alphabetical order.

def sort_alphabetical(words)

end

word_list = ["banana", "apple", "cherry"]
# p sort_alphabetical(word_list)
# Output: ["apple", "banana", "cherry"]



# # Solution
# def sort_alphabetical(words)
#   words.sort
# end

# word_list = ["banana", "apple", "cherry"]
# p sort_alphabetical(word_list)
# # Output: ["apple", "banana", "cherry"]

#------------------------------------------------------------------------------
# Problem 3: Sort an array of numbers in descending order.

def sort_descending(numbers)

end

nums = [5, 2, 8, 1]
# p sort_descending(nums)
# Output: [8, 5, 2, 1]


# # Solution
# def sort_descending(numbers)
#   numbers.sort.reverse
# end

# nums = [5, 2, 8, 1]
# p sort_descending(nums)
# # Output: [8, 5, 2, 1]

#------------------------------------------------------------------------------
# Problem 4: Sort an array of numbers in descending order using this syntax `{ |a, b| b <=> a }`

def sort_descending(numbers)

end

nums = [5, 2, 8, 1]
# p sort_descending(nums)
# Output: [8, 5, 2, 1]



# # Solution
# def sort_descending(numbers)
#   numbers.sort { |a, b| b <=> a }
# end

# nums = [5, 2, 8, 1]
# p sort_descending(nums)
# # Output: [8, 5, 2, 1]

#------------------------------------------------------------------------------
# Problem 5: Write a function that sorts a hash by its keys.

def sort_hash_by_keys(hash)

end

example_hash = { c: 3, a: 1, b: 2 }
# p sort_hash_by_keys(example_hash)
# Output: { a: 1, b: 2, c: 3 }

# # Solution
# def sort_hash_by_keys(hash)
#   hash.sort.to_h # Sorts key-value pairs by keys and converts the result back to a hash.
# end
#
# example_hash = { c: 3, a: 1, b: 2 }
# p sort_hash_by_keys(example_hash)
# # Output: { a: 1, b: 2, c: 3 }

#------------------------------------------------------------------------------
# Problem 6: Write a function that sorts a hash by its values.

def sort_hash_by_values(hash)

end

example_hash = { c: 3, a: 1, b: 2 }
# p sort_hash_by_values(example_hash)
# Output: { a: 1, b: 2, c: 3 }



# # Solution
# def sort_hash_by_values(hash)
#   hash.sort { |(_, value1), (_, value2)| value1 <=> value2 }.to_h # Sorts key-value pairs by values.
# end
#
# example_hash = { c: 3, a: 1, b: 2 }
# p sort_hash_by_values(example_hash)
# # Output: { a: 1, b: 2, c: 3 }


#------------------------------------------------------------------------------
# Problem 1: Write a function that sums all elements in an array without using the sum method

def sum_array(numbers)

end

numbers = [1, 2, 3, 4]
# p sum_array(numbers)
# Output: 10



# # Solution 1
# def sum_array(numbers)
#   numbers.reduce(0) { |accumulator, num| accumulator + num }
# end

# numbers = [1, 2, 3, 4]
# p sum_array(numbers)
# # Output: 10


# # Solution 2
# def sum_array(numbers)
#   numbers.reduce(0) do |accumulator, num|
#     accumulator + num
#   end
# end

# numbers = [1, 2, 3, 4]
# p sum_array(numbers)
# # Output: 10

#------------------------------------------------------------------------------
# Problem 2: Write a function that finds the product of all elements in an array.

def product_of_array(numbers)

end

numbers = [2, 3, 4]
# p product_of_array(numbers)
# Output: 24



# # Solution
# def product_of_array(numbers)
#   numbers.reduce(1) { |accumulator, num| accumulator * num }
# end

# numbers = [2, 3, 4]
# p product_of_array(numbers)
# # Output: 24

#------------------------------------------------------------------------------
# Problem 3: Write a function that returns the total sum of an array of integers using this (:+) syntax inside the method.

def total_sum(numbers)

end

numbers = [1, 2, 3, 4]
# p total_sum(numbers)
# Output: 10



# # Solution
# def total_sum(numbers)
#   numbers.reduce(:+)
# end

# numbers = [1, 2, 3, 4]
# p total_sum(numbers)
# # Output: 10

#------------------------------------------------------------------------------
# Problem 4: Write a function that returns the total sum of a range of numbers using this (:+) syntax inside the method.

def sum_range(range)

end

# p sum_range(1..5)
# Output: 15



# # Solution
# def sum_range(range)
#   range.reduce(:+)
# end

# p sum_range(1..5)
# # Output: 15

#------------------------------------------------------------------------------
# Problem 5: Write a function that sums all the values in a hash.

def sum_hash_values(hash)

end

data = { a: 1, b: 2, c: 3 }
# p sum_hash_values(data)
# Output: 6



# # Solution
# def sum_hash_values(hash)
#   hash.reduce(0) { |sum, (_, value)| sum + value }
#   # reduce(0): Starts with an initial value of 0 for the sum.
#   # |sum, (_, value)|: Iterates through each key-value pair; ignores the key (_), uses the value.
#   # sum + value: Adds the current value to the running total (sum).
# end

# data = { a: 1, b: 2, c: 3 }
# p sum_hash_values(data)
# # Output: 6




#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of strings and prints each string with its index?

def print_elements_with_index(array)

end

nums = [10, 20, 30]
# print_elements_with_index(nums)
# Output:
# Index 0: 10
# Index 1: 20
# Index 2: 30


# # Solution
# def print_elements_with_index(array)
#   array.each_with_index { |element, index| puts "Index #{index}: #{element}" }
# end

# nums = [10, 20, 30]
# print_elements_with_index(nums)
# # Output:
# # Index 0: 10
# # Index 1: 20
# # Index 2: 30



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of numbers and returns a new array where each number is multiplied by its index using with_index. (with map)

def multiply_by_index(array)

end

numbers = [10, 20, 30]
# p multiply_by_index(numbers)
# Output:
# [0, 20, 60]


# Solution
# def multiply_by_index(array)
#   array.map.with_index { |num, index| num * index }
# end

# numbers = [10, 20, 30]
# p multiply_by_index(numbers)
# # Output:
# # [0, 20, 60]



#------------------------------------------------------------------------------
# Medium-importance methods (.find, .count, .reject, .any?, .all?, .none?, .sum, .sort_by, .min_by, .each_with_index, .each_with_object) come up often enough that they should be part of your everyday toolkit.
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the first even number in an array.

def first_even(numbers)

end

numbers = [1, 3, 5, 6, 7]
# p first_even(numbers)
# Output: 6



# # Solution
# def first_even(numbers)
#   numbers.find { |num| num.even? }
# end

# numbers = [1, 3, 5, 6, 7]
# p first_even(numbers)
# # Output: 6


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the first word longer than 4 letters.

def first_long_word(words)

end

words = ["cat", "door", "apple", "hi"]
# p first_long_word(words)
# Output: "apple"



# # Solution
# def first_long_word(words)
#   words.find { |word| word.size > 4 }
# end

# words = ["cat", "door", "apple", "hi"]
# p first_long_word(words)
# # Output: "apple"

#------------------------------------------------------------------------------
# Problem 3: Write a function that finds the First Key-Value Pair with a Specific Value

def find_value_in_hash(hash, target)

end

data = { a: 1, b: 2, c: 3 }
# p find_value_in_hash(data, 2)
# Output: [:b, 2]


# # Solution
# def find_value_in_hash(hash, target)
#   hash.find { |_, value| value == target }
# end

# data = { a: 1, b: 2, c: 3 }
# p find_value_in_hash(data, 2)
# # Output: [:b, 2]


#------------------------------------------------------------------------------
# Problem 1: Write a function that counts how many numbers are greater than 10.

def count_greater_than_ten(numbers)

end

numbers = [5, 12, 13, 8, 20]
# p count_greater_than_ten(numbers)
# Output: 3



# # Solution
# def count_greater_than_ten(numbers)
#   numbers.count { |num| num > 10 }
# end

# numbers = [5, 12, 13, 8, 20]
# p count_greater_than_ten(numbers)
# # Output: 3


#------------------------------------------------------------------------------
# Problem 2: Count occurrences of a specific element in an array.

def count_specific_element(array, target)

end

values = [1, 2, 2, 3, 3, 3]
# p count_specific_element(values, 3)
# Output: 3


# # Solution
# def count_specific_element(array, target)
#   array.count(target)
# end

# values = [1, 2, 2, 3, 3, 3]
# p count_specific_element(values, 3)
# # Output: 3

#------------------------------------------------------------------------------
# Problem 3: Count the total number of key-value pairs in a hash.

data = { a: 1, b: 2, c: 3 }

# Output: 3


# # Solution
# data = { a: 1, b: 2, c: 3 }
# p data.count
# # Output: 3

#------------------------------------------------------------------------------
# Problem 4: Count key-value pairs in a hash where the values are greater than 1.

def count_matching_pairs(hash)

end

hash = { a: 1, b: 2, c: 3 }
# p count_matching_pairs(hash)
# Output: 2



# # Solution
# def count_matching_pairs(hash)
#   hash.count {|_, value| value > 1}
# end

# hash = { a: 1, b: 2, c: 3 }
# p count_matching_pairs(hash)
# # Output: 2


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of numbers and returns an array without negative numbers?

def remove_negatives(numbers)

end

nums = [-1, 2, -3, 4]
# p remove_negatives(nums)
# Output: [2, 4]



# # Solution
# def remove_negatives(numbers)
#   numbers.reject { |n| n < 0 }
# end

# nums = [-1, 2, -3, 4]
# p remove_negatives(nums)
# # Output: [2, 4]

#------------------------------------------------------------------------------
# Problem 2: Write a function that removes all even numbers from an array.

def reject_even_numbers(array)

end

nums = [1, 2, 3, 4, 5, 6]
# p reject_even_numbers(nums)
# Output: [1, 3, 5]


# # Solution
# def reject_even_numbers(array)
#   array.reject { |num| num.even? }
# end

# nums = [1, 2, 3, 4, 5, 6]
# p reject_even_numbers(nums)
# # Output: [1, 3, 5]


#------------------------------------------------------------------------------
# Problem 3: Write a function that exclude key-value pairs from a hash where the value is less than 10.

def reject_values_less_than_10(hash)

end

data = { a: 5, b: 15, c: 8, d: 20 }
# p reject_values_less_than_10(data)
# Output: { b: 15, d: 20 }


# # Solution
# def reject_values_less_than_10(hash)
#   hash.reject { |key, value| value < 10 }
# end

# data = { a: 5, b: 15, c: 8, d: 20 }
# p reject_values_less_than_10(data)
# # Output: { b: 15, d: 20 }

#------------------------------------------------------------------------------
# Problem 4: Write a function that exclude empty strings from an array.

def reject_empty_strings(strings)

end

words = ["hello", "", "world", "", "ruby"]
# p reject_empty_strings(words)
# Output: ["hello", "world", "ruby"]


# # Solution
# def reject_empty_strings(strings)
#   strings.reject { |str| str.empty? }
# end

# words = ["hello", "", "world", "", "ruby"]
# p reject_empty_strings(words)
# # Output: ["hello", "world", "ruby"]



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of numbers and returns true if there is at least one negative number?

def any_negative?(numbers)

end

nums = [1, -2, 3]
# p any_negative?(nums)
# Output: true



# # Solution
# def any_negative?(numbers)
#   numbers.any? { |n| n < 0 }
# end

# nums = [1, -2, 3]
# p any_negative?(nums)
# # Output: true


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of numbers and returns true if all numbers are positive?

def all_positive?(numbers)

end

nums = [1, 3, 5]
# p all_positive?(nums)
# Output: true



# # Solution
# def all_positive?(numbers)
#   numbers.all? { |n| n > 0 }
# end

# nums = [1, 3, 5]
# p all_positive?(nums)
# # Output: true


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of words and returns true if none of them start with "z"?

def none_start_with_z?(words)

end

words = ["apple", "cat", "banana"]
# p none_start_with_z?(words)
# Output: true



# # Solution
# def none_start_with_z?(words)
#   words.none? { |w| w.start_with?("z") }
# end

# words = ["apple", "cat", "banana"]
# p none_start_with_z?(words)
# # Output: true



#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the total sum of an array of integers.

def total_sum(numbers)

end

numbers = [1, 2, 3]
# p total_sum(numbers)
# Output: 6


# # Solution
# def total_sum(numbers)
#   numbers.sum
# end

# numbers = [1, 2, 3]
# p total_sum(numbers)
# # Output: 6

#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the total sum of a range of numbers.

def sum_range(range)

end

# p sum_range(1..5)
# Output: 15



# # Solution
# def sum_range(range)
#   range.sum
# end

# p sum_range(1..5)
# # Output: 15


#------------------------------------------------------------------------------
# Problem 1: Write a function that sort an array of numbers in ascending order.

def sort_numbers(array)

end

numbers = [5, 3, 8, 1]
# p sort_numbers(numbers)
# Output: [1, 3, 5, 8]



# # Solution
# def sort_numbers(array)
#   array.sort_by { |num| num } # Sorts by the numbers themselves.
# end

# numbers = [5, 3, 8, 1]
# p sort_numbers(numbers)
# # Output: [1, 3, 5, 8]

#------------------------------------------------------------------------------
# Problem 2: Sort an array of strings by their length.

def sort_by_length(array)

end

words = ["apple", "cat", "banana"]
# p sort_by_length(words)
# Output: ["cat", "apple", "banana"]



# # Solution
# def sort_by_length(array)
#   array.sort_by { |str| str.length } # Sorts by string length.
# end

# words = ["apple", "cat", "banana"]
# p sort_by_length(words)
# # Output: ["cat", "apple", "banana"]

#------------------------------------------------------------------------------
# Problem 3: Sort a hash by its keys.

def sort_hash_by_keys(hash)

end

example_hash = { c: 3, a: 1, b: 2 }
# p sort_hash_by_keys(example_hash)
# Output: [[:a, 1], [:b, 2], [:c, 3]]



# # Solution
# def sort_hash_by_keys(hash)
#   hash.sort_by { |key, _| key } # Sorts by keys (alphabetical order).
# end

# example_hash = { c: 3, a: 1, b: 2 }
# p sort_hash_by_keys(example_hash)
# # Output: [[:a, 1], [:b, 2], [:c, 3]]

#------------------------------------------------------------------------------
# Problem 4: Sort a hash by its values.

def sort_hash_by_values(hash)

end

example_hash = { c: 3, a: 1, b: 2 }
# p sort_hash_by_values(example_hash)
# Output: [[:a, 1], [:b, 2], [:c, 3]]



# # Solution
# def sort_hash_by_values(hash)
#   hash.sort_by { |_, value| value } # Sorts by values (numerical order).
# end

# example_hash = { c: 3, a: 1, b: 2 }
# p sort_hash_by_values(example_hash)
# # Output: [[:a, 1], [:b, 2], [:c, 3]]


#------------------------------------------------------------------------------
# Problem 1: Write a function that finds the minimum number in an array.

def find_min_number(array)
  array.min_by { |num| num } # Finds the element with the smallest value.
end

numbers = [5, 3, 8, 1]
# p find_min_number(numbers)
# Output: 1



# # Solution
# def find_min_number(array)
#   array.min_by { |num| num } # Finds the element with the smallest value.
# end
#
# numbers = [5, 3, 8, 1]
# p find_min_number(numbers)
# # Output: 1

#------------------------------------------------------------------------------
# Problem 2: Write a function that finds the shortest string in an array.

def find_shortest_string(array)

end

words = ["apple", "cat", "banana"]
# p find_shortest_string(words)
# Output: "cat"



# # Solution
# def find_shortest_string(array)
#   array.min_by { |str| str.length } # Finds the string with the smallest length.
# end
#
# words = ["apple", "cat", "banana"]
# p find_shortest_string(words)
# # Output: "cat"

#------------------------------------------------------------------------------
# Problem 3: Write a function that finds the key-value pair in a hash with the smallest value.

def find_min_value(hash)

end

example_hash = { a: 10, b: 5, c: 8 }
# p find_min_value(example_hash)
# Output: [:b, 5]



# # Solution
# def find_min_value(hash)
#   hash.min_by { |_, value| value } # Finds the pair with the smallest value.
# end
#
# example_hash = { a: 10, b: 5, c: 8 }
# p find_min_value(example_hash)
# # Output: [:b, 5]

#------------------------------------------------------------------------------
# Problem 4: Write a function that finds the key-value pair in a hash where the key is alphabetically smallest.

def find_min_key(hash)

end

example_hash = { c: 3, a: 1, b: 2 }
# p find_min_key(example_hash)
# Output: [:a, 1]



# # Solution
# def find_min_key(hash)
#   hash.min_by { |key, _| key } # Finds the pair with the smallest key alphabetically.
# end
#
# example_hash = { c: 3, a: 1, b: 2 }
# p find_min_key(example_hash)
# # Output: [:a, 1]


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of strings and prints each string with its index?

def print_elements_with_index(array)

end

nums = [10, 20, 30]
print_elements_with_index(nums)
# Output:
# Index 0: 10
# Index 1: 20
# Index 2: 30


# # Solution
# def print_elements_with_index(array)
#   array.each_with_index { |element, index| puts "Index #{index}: #{element}" }
# end

# nums = [10, 20, 30]
# print_elements_with_index(nums)
# # Output:
# # Index 0: 10
# # Index 1: 20
# # Index 2: 30

#------------------------------------------------------------------------------
# Problem 2: Write a function that multiplies each element in an array by its index.

def multiply_by_index(array)
  array.map.with_index { |element, index| element * index }
end

nums = [2, 3, 4]
# p multiply_by_index(nums)
# Output: [0, 3, 8]


# # Solution
# def multiply_by_index(array)
#   array.map.with_index { |element, index| element * index }
# end

# nums = [2, 3, 4]
# p multiply_by_index(nums)
# # Output: [0, 3, 8]


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of words and returns a hash mapping each word to its length?

def word_lengths(words)

end

words = ["cat", "bird"]
# p word_lengths(words)
# Output: {"cat"=>3, "bird"=>4}



# # Solution 1
# def word_lengths(words)
#   words.each_with_object({}) do |word, hash|
#     hash[word] = word.length
#   end
# end

# words = ["cat", "bird"]
# p word_lengths(words)
# # Output: {"cat"=>3, "bird"=>4}


# # Solution 2
# def words_to_lengths(words)
#   words.each_with_object({}) { |word, hash| hash[word] = word.length }
# end

# words = ["cat", "bird"]
# puts words_to_lengths(words)
# # Output: {"cat"=>3, "bird"=>4}

#------------------------------------------------------------------------------
# Problem 2: Write a function that takes a hash and returns a new hash with keys and values swapped.

def reverse_hash(hash)

end

original = { a: 1, b: 2, c: 3 }
# p reverse_hash(original)
# Output: {1=>:a, 2=>:b, 3=>:c}



# # Solution
# def reverse_hash(hash)
#   hash.each_with_object({}) { |(key, value), reversed| reversed[value] = key }
# end

# original = { a: 1, b: 2, c: 3 }
# p reverse_hash(original)
# # Output: {1=>:a, 2=>:b, 3=>:c}




#------------------------------------------------------------------------------
# Low-importance methods (.group_by, .flat_map, .zip, .lazy) can be life-savers in specific scenarios but aren’t as frequent in standard easy/medium algorithm problems. Still, they’re good to have in your back pocket.
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Problem 1: Write a function that groups an array of words by their length.

def group_words_by_length(words)

end

words = ["cat", "dog", "apple", "bat", "pear"]
# p group_words_by_length(words)
# Output: {3=>["cat", "dog", "bat"], 5=>["apple"], 4=>["pear"]}



# # Solution
# def group_words_by_length(words)
#   words.group_by { |word| word.length }
# end

# words = ["cat", "dog", "apple", "bat", "pear"]
# p group_words_by_length(words)
# # Output: {3=>["cat", "dog", "bat"], 5=>["apple"], 4=>["pear"]}

#------------------------------------------------------------------------------
# Problem 2: Write a function that takes in an array of numbers and groups them by even/odd?

def group_by_parity(numbers)

end

nums = [1, 2, 3, 4]
# p group_by_parity(nums)
# Output: {"odd"=>[1, 3], "even"=>[2, 4]}



# # Solution
# def group_by_parity(numbers)
#   numbers.group_by { |n| n.even? ? "even" : "odd" }
# end

# nums = [1, 2, 3, 4]
# p group_by_parity(nums)
# # Output: {"odd"=>[1, 3], "even"=>[2, 4]}

#------------------------------------------------------------------------------
# Problem 3: Write a function that groups an array of hashes by the value of a specified key.

def group_by_key(objects, key)

end

people = [
  { name: "Alice", age: 25 },
  { name: "Bob", age: 30 },
  { name: "Charlie", age: 25 }
]
# p group_by_key(people, :age)
# Output: {25=>[{:name=>"Alice", :age=>25}, {:name=>"Charlie", :age=>25}], 30=>[{:name=>"Bob", :age=>30}]}



# # Solution
# def group_by_key(objects, key)
#   objects.group_by { |obj| obj[key] }
# end

# people = [
#   { name: "Alice", age: 25 },
#   { name: "Bob", age: 30 },
#   { name: "Charlie", age: 25 }
# ]
# p group_by_key(people, :age)
# # Output: {25=>[{:name=>"Alice", :age=>25}, {:name=>"Charlie", :age=>25}], 30=>[{:name=>"Bob", :age=>30}]}


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of arrays and returns a single flattened array with each element doubled?

def double_flatten(array_of_arrays)

end

arrays = [[1, 2], [3, 4]]
# p double_flatten(arrays)
# Output: [2, 4, 6, 8]


# # Solution
# def double_flatten(array_of_arrays)
#   array_of_arrays.flat_map { |arr| arr.map { |n| n * 2 } }
#   # The outer flat_map combines and flattens the nested array into a new single flat array: [1, 2, 3, 4]
#   # The inner map doubles each element in the new single flat array: [2, 4, 6, 8]
# end

# arrays = [[1, 2], [3, 4]]
# p double_flatten(arrays)
# # Output: [2, 4, 6, 8]


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in two arrays and returns a combined array of pairs?

def pair_arrays(arr1, arr2)

end

arr1 = [1, 2]
arr2 = ["a", "b"]
# p pair_arrays(arr1, arr2)
# Output: [[1, "a"], [2, "b"]]



# # Solution
# def pair_arrays(arr1, arr2)
#   arr1.zip(arr2)
# end

# arr1 = [1, 2]
# arr2 = ["a", "b"]
# p pair_arrays(arr1, arr2)
# # Output: [[1, "a"], [2, "b"]]


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in a large array of numbers, squares them lazily, and returns the first 3 squares?

def first_three_squares(numbers)

end

nums = (1..10_000).to_a
# p first_three_squares(nums)
# Output: [1, 4, 9]



# # Solution
# def first_three_squares(numbers)
#   numbers.lazy.map { |n| n * n }.first(3)
#   # .lazy creates a lazy enumerator to defer calculations.
#   # .map { |n| n * n } squares each number in the array.
#   # .first(3) stops processing after finding the first 3 squares.
# end

# nums = (1..10_000).to_a         # Creates a large array of numbers.
# p first_three_squares(nums)
# # Output: [1, 4, 9]