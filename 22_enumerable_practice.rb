#------------------------------------------------------------------------------
# Problem 1: Write a function that prints each number of an array.

def print_elements(numbers)
  numbers.each {|num| puts num}
end

numbers = [1, 2, 3]
print_elements(numbers)
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
  person.each {|key, value| p "#{key}: #{value}"}
end

person = { name: "Alice", age: 30 }
print_hash(person)
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
  numbers.map {|num| num + 1}
end

numbers = [1, 2, 3]
p increment_numbers(numbers)
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
# Problem 1: Write a function that selects all even numbers from an array.

def select_even_numbers(array)
  array.select { |num| num.even? }
end

nums = [1, 2, 3, 4, 5, 6]
p select_even_numbers(nums)
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
  words.select {|word| word[0] == "a"}
end

words = ["apple", "banana", "apricot", "cherry"]
p select_words_starting_with_a(words)
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
  hash.select {|key, num| num > 10}
end

data = { a: 5, b: 15, c: 8, d: 20 }
p select_values_greater_than_10(data)
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
  array.select{|num| num > 0}
end

nums = [-3, 0, 5, -1, 2]
p select_positive_numbers(nums)
# Output: [5, 2]


# # Solution
# def select_positive_numbers(array)
#   array.select { |num| num > 0 }
# end

# nums = [-3, 0, 5, -1, 2]
# p select_positive_numbers(nums)
# # Output: [5, 2]



#------------------------------------------------------------------------------
# Problem 1: Write a function that counts how many numbers are greater than 10.

def count_greater_than_ten(numbers)
  numbers.count {|num| num > 10}
end

numbers = [5, 12, 13, 8, 20]
p count_greater_than_ten(numbers)
# Output: 3



# # Solution 1
# def count_greater_than_ten(numbers)
#   numbers.count { |num| num > 10 }
# end

# numbers = [5, 12, 13, 8, 20]
# p count_greater_than_ten(numbers)
# # Output: 3


# # Solution 2
# def count_greater_than_ten(numbers)
#   numbers.count do |num|
#     num > 10
#   end
# end

# numbers = [5, 12, 13, 8, 20]
# p count_greater_than_ten(numbers)
# # Output: 3



#------------------------------------------------------------------------------
# Problem 1: Write a function that sums all elements in an array without using the sum method

def sum_array(numbers)
  numbers.reduce(0) {|accum, num| accum + num }
end

numbers = [1, 2, 3, 4]
p sum_array(numbers)
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
  numbers.reduce(1) {|accum, num| accum * num}
end

numbers = [2, 3, 4]
p product_of_array(numbers)
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
  numbers.reduce(:+)
end

numbers = [1, 2, 3, 4]
p total_sum(numbers)
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
  range.reduce(:+)
end

p sum_range(1..5)
# Output: 15



# # Solution
# def sum_range(range)
#   range.reduce(:+)
# end

# p sum_range(1..5)
# # Output: 15




#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of words and returns a hash mapping each word to its length?

def word_lengths(words)
  words.each_with_object({}) {|word, hash| hash[word] = word.length}
end

words = ["cat", "bird"]
p word_lengths(words)
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


# Solution 2
def words_to_lengths(words)
  words.each_with_object({}) { |word, hash| hash[word] = word.length }
end

words = ["cat", "bird"]
puts words_to_lengths(words)
# Output: {"cat"=>3, "bird"=>4}



#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the first even number in an array.

def first_even(numbers)
  numbers.find {|num| num.even?}
end

numbers = [1, 3, 5, 6, 7]
p first_even(numbers)
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
  words.find {|word| word.length > 4}
end

words = ["cat", "door", "apple", "hi"]
p first_long_word(words)
# Output: "apple"




# # Solution 1
# def first_long_word(words)
#   words.find { |word| word.length > 4 }
# end

# words = ["cat", "door", "apple", "hi"]
# p first_long_word(words)
# # Output: "apple"


# # Solution 2
# def first_long_word(words)
#   words.find do |word|
#     word.size > 4
#   end
# end

# words = ["cat", "door", "apple", "hi"]
# p first_long_word(words)
# # Output: "apple"




#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the total sum of an array of integers.

def total_sum(numbers)
  numbers.sum
end

numbers = [1, 2, 3]
p total_sum(numbers)
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
  range.sum
end

p sum_range(1..5)
# Output: 15



# # Solution
# def sum_range(range)
#   range.sum
# end

# p sum_range(1..5)
# # Output: 15




#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of strings and returns the string with the fewest characters?

def shortest_string(strings)
  strings.min_by {|word| word.length}
end

words = ["apple", "cat", "banana"]
p shortest_string(words)
# Output: "cat"



# # Solution
# def shortest_string(strings)
#   strings.min_by { |s| s.length }
# end

# words = ["apple", "cat", "banana"]
# p shortest_string(words)
# # Output: "cat"




#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of strings and returns them sorted by length?

def sort_by_length(strings)
  strings.sort_by {|string| string.length}
end

words = ["apple", "cat", "banana"]
p sort_by_length(words)
# Output: ["cat", "apple", "banana"]



# # Solution
# def sort_by_length(strings)
#   strings.sort_by { |s| s.length }
# end

# words = ["apple", "cat", "banana"]
# p sort_by_length(words)
# # Output: ["cat", "apple", "banana"]


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes an array of numbers and returns the array sorted in ascending order.

def sort_array(numbers)
  numbers.sort
end

numbers = [5, 3, 8, 1, 4]
p sort_array(numbers)
# Output: [1, 3, 4, 5, 8]


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of numbers and returns an array without negative numbers?

def remove_negatives(numbers)
  numbers.reject {|num| num < 0}
end

nums = [-1, 2, -3, 4]
p remove_negatives(nums)
# Output: [2, 4]



# # Solution
# def remove_negatives(numbers)
#   numbers.reject { |n| n < 0 }
# end

# nums = [-1, 2, -3, 4]
# p remove_negatives(nums)
# # Output: [2, 4]


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of strings and prints each string with its index?

def print_with_index(strings)
  strings.each_with_index {|string, index| puts "#{index}: #{string}"}
end

words = ["apple", "banana"]
print_with_index(words)
# Output:
# 0: apple
# 1: banana



# # Solution
# def print_with_index(strings)
#   strings.each_with_index do |str, i|
#     puts "#{i}: #{str}"
#   end
# end

# words = ["apple", "banana"]
# print_with_index(words)
# # Output:
# # 0: apple
# # 1: banana


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of numbers and returns true if there is at least one negative number?

def any_negative?(numbers)
  numbers.any? {|num| num < 0}
end

nums = [1, -2, 3]
p any_negative?(nums)
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
  numbers.all? {|num| num > 0}
end

nums = [1, 3, 5]
p all_positive?(nums)
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
  words.none? {|word| word[0] == "z"}
end

words = ["apple", "cat", "banana"]
p none_start_with_z?(words)
# Output: true



# # Solution
# def none_start_with_z?(words)
#   words.none? { |w| w.start_with?("z") }
# end

# words = ["apple", "cat", "banana"]
# p none_start_with_z?(words)
# # Output: true



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of numbers and groups them by even/odd?

def group_by_parity(numbers)
  numbers.group_by {|num| num.even? ? "even" : "odd"}
end

nums = [1, 2, 3, 4]
p group_by_parity(nums)
# Output: {"odd"=>[1, 3], "even"=>[2, 4]}



# # Solution
# def group_by_parity(numbers)
#   numbers.group_by { |n| n.even? ? "even" : "odd" }
# end

# nums = [1, 2, 3, 4]
# p group_by_parity(nums)
# # Output: {"odd"=>[1, 3], "even"=>[2, 4]}




#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of arrays and returns a single flattened array with each element doubled?

def double_flatten(array_of_arrays)
  array_of_arrays.flat_map {|arr| arr.map {|num| num * 2} }
end

arrays = [[1, 2], [3, 4]]
p double_flatten(arrays)
# Output: [2, 4, 6, 8]


# # Solution
# def double_flatten(array_of_arrays)
#   array_of_arrays.flat_map { |arr| arr.map { |n| n * 2 } }
# end

# arrays = [[1, 2], [3, 4]]
# p double_flatten(arrays)
# # Output: [2, 4, 6, 8]



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in two arrays and returns a combined array of pairs?

def pair_arrays(arr1, arr2)
  arr1.zip(arr2)
end

arr1 = [1, 2]
arr2 = ["a", "b"]
p pair_arrays(arr1, arr2)
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
  numbers.lazy.map {|num| num * num }.first(3)
end

nums = (1..10_000).to_a
p first_three_squares(nums)
# Output: [1, 4, 9]



# Solution
def first_three_squares(numbers)
  numbers.lazy.map { |n| n * n }.first(3)
end

nums = (1..10_000).to_a
p first_three_squares(nums)
# Output: [1, 4, 9]
