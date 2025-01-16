each
# What it does: Iterates through every element in a collection (array, hash, etc.).
# Why use it: Performing an action on each item (e.g., printing values, modifying data in place).

# Syntax:

# For Arrays:
array.each { |element| block }

array.each do |element|
  block
end

# For Hashes:
hash.each { |key, value| block }

hash.each do |key, value|
  block
end


#------------------------------------------------------------------------------
# Problem 1: Write a function that prints each number of an array.
# Solution 1
def print_elements(numbers)
  numbers.each { |num| puts num }
end

numbers = [1, 2, 3]
print_elements(numbers)
# Output:
# 1
# 2
# 3


# Solution 2
def print_elements(numbers)
  numbers.each do |num|
    p num
  end
end

numbers = [1, 2, 3]
print_elements(numbers)
# Output:
# 1
# 2
# 3


#------------------------------------------------------------------------------
# Problem 2: Write a function that prints each key-value pair in a hash.
# Solution 1
def print_hash(person)
  person.each { |key, value| puts "#{key}: #{value}" }
end

person = { name: "Alice", age: 30 }
print_hash(person)
# Output:
# name: Alice
# age: 30


# Solution 2
def print_hash(person)
  person.each do |key, value|
    p "#{key} => #{value}"
  end
end

person = { name: "Alice", age: 30 }
print_hash(person)
# Output:
# "name => Alice"
# "age => 30"



map
# What it does: Returns a new array (or collection) where each element is transformed based on the provided block.
# Why use it: Create a modified version of your original data (e.g., incrementing numbers).

# Syntax:
array.map { |element| block }
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes an array of numbers and returns a new array where each number is incremented by 1.
# Solution 1
def increment_numbers(numbers)
  numbers.map { |num| num + 1 }
end

numbers = [1, 2, 3]
p increment_numbers(numbers)
# Output: [2, 3, 4]


# Solution 2
def increment_numbers(numbers)
  numbers.map do |num|
    num + 1
  end
end

numbers = [1, 2, 3]
p increment_numbers(numbers)
# Output: [2, 3, 4]



select
# What it does: Filters elements from a collection (array or hash) based on a condition, keeping only the elements that match the condition.
# Why use it: To create a new collection with specific elements that meet the criteria.

# Syntax:

# For Arrays:
array.select { |element| condition }
# Returns a new array with elements that satisfy the condition.

# For Hashes:
hash.select { |key, value| condition }
# Returns a new hash with key-value pairs that satisfy the condition.

#------------------------------------------------------------------------------
# Problem 1: Write a function that selects all even numbers from an array.

def select_even_numbers(array)
  array.select { |num| num.even? }
end

nums = [1, 2, 3, 4, 5, 6]
p select_even_numbers(nums)
# Output: [2, 4, 6]


#------------------------------------------------------------------------------
# Problem 2: Write a function that selects all words that start with "a".

def select_words_starting_with_a(words)
  words.select { |word| word.start_with?("a") }
end

words = ["apple", "banana", "apricot", "cherry"]
p select_words_starting_with_a(words)
# Output: ["apple", "apricot"]


#------------------------------------------------------------------------------
# Problem 3: Write a function that selects key-value pairs where the value is greater than 10.

def select_values_greater_than_10(hash)
  hash.select { |key, value| value > 10 }
end

data = { a: 5, b: 15, c: 8, d: 20 }
p select_values_greater_than_10(data)
# Output: { b: 15, d: 20 }


#------------------------------------------------------------------------------
# Problem 4: Write a function that selects all positive numbers from an array.

def select_positive_numbers(array)
  array.select { |num| num > 0 }
end

nums = [-3, 0, 5, -1, 2]
p select_positive_numbers(nums)
# Output: [5, 2]



count
# What it does: Returns the number of elements in a collection, or the count of elements matching a condition if a block is given.
# Why use it: Determining the total number of items (e.g., array.count) or those meeting specific criteria (e.g., array.count { |x| x > 10 }).

# Syntax:
array.count                  # Returns the total number of elements
array.count(value)           # Counts how many elements equal `value`
array.count { |element| condition }
# Counts how many elements satisfy the condition
#------------------------------------------------------------------------------
# Problem 1: Write a function that counts how many numbers are greater than 10.
# Solution 1
def count_greater_than_ten(numbers)
  numbers.count { |num| num > 10 }
end

numbers = [5, 12, 13, 8, 20]
p count_greater_than_ten(numbers)
# Output: 3


# Solution 2
def count_greater_than_ten(numbers)
  numbers.count do |num|
    num > 10
  end
end

numbers = [5, 12, 13, 8, 20]
p count_greater_than_ten(numbers)
# Output: 3



reduce or inject
# What it does: Accumulates a value by iterating through all elements in a collection, applying an operation (e.g., addition).
# Why use it: To condense a collection into a single value by repeatedly applying an operation (e.g., summing up all prices in a cart).

# Syntax:
array.reduce(initial_value) { |accumulator, element| block }
# `initial_value` is optional. If omitted, the first element is used as the starting value.
#------------------------------------------------------------------------------
# Problem 1: Write a function that sums all elements in an array.
# Solution 1
def sum_array(numbers)
  numbers.reduce(0) { |accumulator, num| accumulator + num }
end

numbers = [1, 2, 3, 4]
p sum_array(numbers)
# Output: 10


# Solution 2
def sum_array(numbers)
  numbers.reduce(0) do |accumulator, num|
    accumulator + num
  end
end

numbers = [1, 2, 3, 4]
p sum_array(numbers)
# Output: 10


#------------------------------------------------------------------------------
# Problem 2: Write a function that finds the product of all elements in an array.

def product_of_array(numbers)
  numbers.reduce(1) { |accumulator, num| accumulator * num }
end

numbers = [2, 3, 4]
p product_of_array(numbers)
# Output: 24


#------------------------------------------------------------------------------
# Problem 3: Write a function that returns the total sum of an array of integers.

def total_sum(numbers)
  numbers.reduce(:+)
end

numbers = [1, 2, 3, 4]
p total_sum(numbers)
# Output: 10


#------------------------------------------------------------------------------
# Problem 4: Write a function that returns the total sum of a range of numbers.

def sum_range(range)
  range.reduce(:+)
end

p sum_range(1..5)
# Output: 15



each_with_object
# What it does: Iterates through a collection and builds or updates an external object in the process.
# Why use it: Creating or populating a data structure (like a hash) while iterating.

# Syntax:
collection.each_with_object(initial_object) { |element, obj| block }
# `initial_object` is the object being built or modified (e.g., a hash or array).
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of words and returns a hash mapping each word to its length?

def word_lengths(words)
  words.each_with_object({}) do |word, hash|
    hash[word] = word.length
  end
end

words = ["cat", "bird"]
p word_lengths(words)
# Output: {"cat"=>3, "bird"=>4}


#------------------------------------------------------------------------------
# Problem 2: Write a function that takes a hash and returns a new hash with keys and values swapped.

def reverse_hash(hash)
  hash.each_with_object({}) { |(key, value), reversed| reversed[value] = key }
end

original = { a: 1, b: 2, c: 3 }
p reverse_hash(original)
# Output: {1=>:a, 2=>:b, 3=>:c}



find
# What it does: Returns the first element in a collection that matches a given condition, or nil if no element matches.
# Why use it: Searching through data to get the initial match (e.g., finding the first user over age 18).

# Syntax:
collection.find { |element| condition }
# Returns the first element that satisfies the condition, or `nil` if no match is found.
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the first even number in an array.
# Solution 1
def first_even(numbers)
  numbers.find { |num| num.even? }
end

numbers = [1, 3, 5, 6, 7]
p first_even(numbers)
# Output: 6


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the first word longer than 4 letters.
# Solution 1
def first_long_word(words)
  words.find { |word| word.length > 4 }
end

words = ["cat", "door", "apple", "hi"]
p first_long_word(words)
# Output: "apple"


# Solution 2
def first_long_word(words)
  words.find do |word|
    word.size > 4
  end
end

words = ["cat", "door", "apple", "hi"]
p first_long_word(words)
# Output: "apple"



sum
# What it does: Quickly calculates the sum of elements in an array or other Enumerable object.
# Why use it: Simplifies the process of adding up numbers (e.g., total points scored by a team).

# Syntax:
array.sum                        # Returns the sum of all elements
array.sum(initial_value)         # Adds the elements to the initial value
array.sum { |element| block }    # Sums the result of applying a block to each element
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the total sum of an array of integers.
# Solution 1
def total_sum(numbers)
  numbers.sum
end

numbers = [1, 2, 3]
p total_sum(numbers)
# Output: 6


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the total sum of a range of numbers.
# Solution 1
def sum_range(range)
  range.sum
end

p sum_range(1..5)
# Output: 15



min_by
# What it does: Finds the element with the minimum value as determined by the block.
# Why use it: Useful for retrieving the "smallest" item based on a custom comparison.

# Syntax:
collection.min_by { |element| block }
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of strings and returns the string with the fewest characters?
def shortest_string(strings)
  strings.min_by { |s| s.length }
end

words = ["apple", "cat", "banana"]
p shortest_string(words)
# Output: "cat"



sort_by
# What it does: Sorts a collection according to values computed in the given block.
# Why use it: Great for custom sorting based on a specific property of each element.

# Syntax:
collection.sort_by { |element| block }
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of strings and returns them sorted by length?
def sort_by_length(strings)
  strings.sort_by { |s| s.length }
end

words = ["apple", "cat", "banana"]
p sort_by_length(words)
# Output: ["cat", "apple", "banana"]



sort
# What it does: Returns a new array with the elements sorted in ascending order.
# Why use it: Organize elements in a specific order, such as numerical or alphabetical.

# Syntax:
# Sorts in ascending order
array.sort

# Allows custom sorting logic
array.sort { |a, b| custom_block }

# comparison logic
a <=> b # default comparison operator

#------------------------------------------------------------------------------
# Problem: Write a function that takes an array of numbers and returns the array sorted in ascending order.
def sort_array(numbers)
  numbers.sort
end

numbers = [5, 3, 8, 1, 4] # Output: [1, 3, 4, 5, 8]
p sort_array(numbers)



reject
# What it does: Returns an array of elements for which the block condition is false.
# Why use it: Opposite of .select — filters out elements you don't want.

# Syntax:
collection.reject { |element| condition }
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of numbers and returns an array without negative numbers?
def remove_negatives(numbers)
  numbers.reject { |n| n < 0 }
end

nums = [-1, 2, -3, 4]
p remove_negatives(nums)
# Output: [2, 4]



each_with_index
# What it does: Iterates through each element, providing both element and index.
# Why use it: Needed when you must access or use the index during iteration.

# Syntax:
collection.each_with_index { |element, index| block }
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of strings and prints each string with its index?
def print_with_index(strings)
  strings.each_with_index do |str, i|
    puts "#{i}: #{str}"
  end
end

words = ["apple", "banana"]
print_with_index(words)
# Output:
# 0: apple
# 1: banana



any?
# What it does: Checks if at least one element meets the condition in the block.
# Why use it: Quick way to see if there’s a match for a given criterion.

# Syntax:
collection.any? { |element| condition }
# condition that returns true or false
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of numbers and returns true if there is at least one negative number?
def any_negative?(numbers)
  numbers.any? { |n| n < 0 }
end

nums = [1, -2, 3]
p any_negative?(nums)
# Output: true



all?
# What it does: Checks if all elements meet the condition in the block.
# Why use it: Validates that every item in the collection satisfies a requirement.

# Syntax:
collection.all? { |element| condition }
# condition that returns true or false
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of numbers and returns true if all numbers are positive?

def all_positive?(numbers)
  numbers.all? { |n| n > 0 }
end

nums = [1, 3, 5]
p all_positive?(nums)
# Output: true



none?
# What it does: Checks if no elements in the collection meet the condition in the block.
# Why use it: Confirm that a certain condition does not apply to any element.

# Syntax:
collection.none? { |element| condition }
# condition that returns true or false
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of words and returns true if none of them start with "z"?

def none_start_with_z?(words)
  words.none? { |w| w.start_with?("z") }
end

words = ["apple", "cat", "banana"]
p none_start_with_z?(words)
# Output: true



group_by
# What it does: Groups collection elements into a hash, keyed by the result of the block.
# Why use it: Useful for categorizing elements into multiple groups.

# Syntax:
collection.group_by { |element| block }
# return grouping criterion
# collection: The array, range, or enumerable to group.
# block: Code that determines the key for each group.

#------------------------------------------------------------------------------
# Problem 1: Write a function that groups an array of words by their length.

def group_words_by_length(words)
  words.group_by { |word| word.length }
end

words = ["cat", "dog", "apple", "bat", "pear"]
p group_words_by_length(words)
# Output: {3=>["cat", "dog", "bat"], 5=>["apple"], 4=>["pear"]}


#------------------------------------------------------------------------------
# Problem 2: Write a function that takes in an array of numbers and groups them by even/odd?

def group_by_parity(numbers)
  numbers.group_by { |n| n.even? ? "even" : "odd" }
end

nums = [1, 2, 3, 4]
p group_by_parity(nums)
# Output: {"odd"=>[1, 3], "even"=>[2, 4]}


#------------------------------------------------------------------------------
# Problem 3: Write a function that groups an array of hashes by the value of a specified key.

def group_by_key(objects, key)
  objects.group_by { |obj| obj[key] }
end

people = [
  { name: "Alice", age: 25 },
  { name: "Bob", age: 30 },
  { name: "Charlie", age: 25 }
]
p group_by_key(people, :age)
# Output: {25=>[{:name=>"Alice", :age=>25}, {:name=>"Charlie", :age=>25}], 30=>[{:name=>"Bob", :age=>30}]}



flat_map
# What it does: Maps each element to a new array and then flattens the result by one level.
# Why use it: Efficient way to transform nested structures into a single-level collection.

# Syntax:
collection.flat_map { |element| block }
# return an array of transformed elements
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of arrays and returns a single flattened array with each element doubled?

def double_flatten(array_of_arrays)
  array_of_arrays.flat_map { |arr| arr.map { |n| n * 2 } }
  # The outer flat_map combines and flattens the nested array into a new single flat array: [1, 2, 3, 4]
  # The inner map doubles each element in the new single flat array: [2, 4, 6, 8]
end

arrays = [[1, 2], [3, 4]]
p double_flatten(arrays)
# Output: [2, 4, 6, 8]



zip
# What it does: Combines elements from multiple arrays (or enumerables) in sequence, creating sub-arrays.
# Why use it: Align elements from two or more collections in parallel.

# Syntax:
array1.zip(array2, array3, ...)
# elements is an array of corresponding items from each array
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in two arrays and returns a combined array of pairs?

def pair_arrays(arr1, arr2)
  arr1.zip(arr2)
end

arr1 = [1, 2]
arr2 = ["a", "b"]
p pair_arrays(arr1, arr2)
# Output: [[1, "a"], [2, "b"]]


lazy
# What it does: Creates a lazy enumerator that defers computations until elements are actually needed.
# Why use it: Useful for very large collections, as it avoids building large intermediate arrays.

# Syntax:
collection.lazy
  .map { |x| x * 2 }
  .select { |x| x > 10 }
  .first(5)

# You can chain other enumerator methods (e.g., map, select, etc.) after .lazy and finalize with a method like first or to_a to process the data.

#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in a large array of numbers, squares them lazily, and returns the first 3 squares?

def first_three_squares(numbers)
  numbers.lazy.map { |n| n * n }.first(3)
  # .lazy creates a lazy enumerator to defer calculations.
  # .map { |n| n * n } squares each number in the array.
  # .first(3) stops processing after finding the first 3 squares.
end

nums = (1..10_000).to_a         # Creates a large array of numbers.
p first_three_squares(nums)
# Output: [1, 4, 9]
