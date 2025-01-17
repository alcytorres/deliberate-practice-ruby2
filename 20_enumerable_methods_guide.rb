enumerator

# What it does: Object that lets you step through a collection (like an array or range) one item at a time or process it later when you're ready. It "remembers" the method you called (e.g., each, map) and the collection so you can use it flexibly.

# Why use it:
   # Deferred Execution: It allows you to delay processing a collection until you’re ready to specify what to do.
   # Custom Control: It lets you manually control iteration with methods like next or rewind.
   # Chaining: You can chain additional methods or logic to customize how the iteration happens.
   # Flexibility: It provides a way to work with collections without immediately executing the iteration logic.

# Problem 1: Write a function that creates an enumerator for an array.

def create_enumerator(array)
  array.each
end

numbers = [1, 2, 3]
enum = create_enumerator(numbers)
# enum is the enumerator bc its an object that lets you iterate over each number in the array.

p enum # Output: #<Enumerator: [1, 2, 3]:each>
p enum.next # Output: 1 (first element)
p enum.next # Output: 2 (next element)


# Key Notes:
   # An Enumerator is created implicitly by methods like .each, .map, or .select when no block is provided.
   # Enumerators are lazy, meaning they do not evaluate until explicitly iterated (e.g., with .next or .each).
   # Useful for generating or processing infinite sequences, chaining operations, or handling large data efficiently.

# Practical Use Case:
   # Infinite generators (e.g., Fibonacci series).
   # Flexible iteration over large or complex collections.
   # Deferred execution in pipelines with chained transformations.

#------------------------------------------------------------------------------
# High-importance methods (.each, .map, .select, .sort, .reduce) appear in countless patterns—knowing them well drastically simplifies your solutions.
#------------------------------------------------------------------------------

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

hash.each_key { |key| block }   # Iterates over keys only.
hash.each_value { |value| block } # Iterates over values only.

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
# Why use it: To apply a transformation to every element in a collection without modifying the original collection (e.g., incrementing numbers).

# Syntax:

# For arrays
array.map { |element| block }
array.map! { |element| block } # Modifies in place.

collection.map(&:method_name)  # Shortcut for calling a single method on each element.

# For hashes
hash.map { |key, value| block } # Returns an array of results.
hash.transform_values { |value| block } # Modifies values only.

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

#------------------------------------------------------------------------------
# Problem 2: Write a function that extracts all keys from a hash.

def extract_keys(hash)
  hash.map { |key, value| key }
end

data = { a: 1, b: 2, c: 3 }
p extract_keys(data)
# Output: [:a, :b, :c]

#------------------------------------------------------------------------------
# Problem 3: Write a function that converts all strings in an array to uppercase.

def uppercase_strings(array)
  array.map(&:upcase) # Shortcut for array.map { |str| str.upcase }
end

words = ["hello", "world"]
p uppercase_strings(words)
# Output: ["HELLO", "WORLD"]

#------------------------------------------------------------------------------
# Problem 4: Write a function that squares all numbers in a nested array.

def square_nested(array_of_arrays)
  array_of_arrays.map { |arr| arr.map { |n| n * n } }
end

nested = [[1, 2], [3, 4]]
p square_nested(nested)
# Output: [[1, 4], [9, 16]]



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



sort
# What it does: Returns a new array with the elements sorted in ascending order by default.
# Why use it: Organizing data in a meaningful order, such as numerically or alphabetically.

# Syntax:

# For arrays
array.sort
array.sort { |a, b| custom_block }   # Allows custom sorting logic

# For descending order:
array.sort.reverse
# Or use
array.sort { |a, b| b <=> a }

#------------------------------------------------------------------------------
# Problem 1: Write a function that sorts an array of numbers in ascending order.

def sort_ascending(numbers)
  numbers.sort
end

nums = [5, 2, 8, 1, 3]
p sort_ascending(nums)
# Output: [1, 2, 3, 5, 8]


#------------------------------------------------------------------------------
# Problem 2: Write a function that sorts an array of strings in alphabetical order.

def sort_alphabetical(words)
  words.sort
end

word_list = ["banana", "apple", "cherry"]
p sort_alphabetical(word_list)
# Output: ["apple", "banana", "cherry"]

#------------------------------------------------------------------------------
# Problem 3: Sort an array of numbers in descending order.

def sort_descending(numbers)
  numbers.sort.reverse
end

nums = [5, 2, 8, 1]
p sort_descending(nums)
# Output: [8, 5, 2, 1]

#------------------------------------------------------------------------------
# Problem 4: Sort an array of numbers in descending order using this syntax `{ |a, b| b <=> a }`

def sort_descending(numbers)
  numbers.sort { |a, b| b <=> a }
end

nums = [5, 2, 8, 1]
p sort_descending(nums)
# Output: [8, 5, 2, 1]



reduce or inject
# What it does: Accumulates a value by iterating through all elements in a collection, applying an operation (e.g., addition).
# Why use it: To condense a collection into a single value by repeatedly applying an operation (e.g., summing up all prices in a cart).

# Syntax:

# For arrays
array.reduce(initial_value) { |accumulator, element| block }
# `initial_value` is optional. If omitted, the first element is used as the starting value.

array.reduce { |accumulator, element| block }   # Without initial value.

# For hashes
hash.reduce(initial_value) { |accumulator, (key, value)| block }

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
# Problem 3: Write a function that returns the total sum of an array of integers using this (:+) syntax inside the method.

def total_sum(numbers)
  numbers.reduce(:+)
end

numbers = [1, 2, 3, 4]
p total_sum(numbers)
# Output: 10

#------------------------------------------------------------------------------
# Problem 4: Write a function that returns the total sum of a range of numbers using this (:+) syntax inside the method.

def sum_range(range)
  range.reduce(:+)
end

p sum_range(1..5)
# Output: 15

#------------------------------------------------------------------------------
# Problem 5: Write a function that sums all the values in a hash.

def sum_hash_values(hash)
  hash.reduce(0) { |sum, (_, value)| sum + value }
  # reduce(0): Starts with an initial value of 0 for the sum.
  # |sum, (_, value)|: Iterates through each key-value pair; ignores the key (_), uses the value.
  # sum + value: Adds the current value to the running total (sum).
end

data = { a: 1, b: 2, c: 3 }
p sum_hash_values(data)
# Output: 6




#------------------------------------------------------------------------------
# Medium-importance methods (.find, .count, .reject, .any?, .all?, .none?, .sum, .sort_by, .min_by, .each_with_index, .each_with_object) come up often enough that they should be part of your everyday toolkit.
#------------------------------------------------------------------------------

find
# What it does: Returns the first element in a collection that matches a given condition, or nil if no element matches.
# Why use it: Searching through data to get the initial match (e.g., finding the first user over age 18).

# Syntax:

# For arrays
array.find { |element| condition }

# For hashes
hash.find { |key, value| condition }

# Returns the first element that satisfies the condition, or `nil` if no match is found.

#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the first even number in an array.

def first_even(numbers)
  numbers.find { |num| num.even? }
end

numbers = [1, 3, 5, 6, 7]
p first_even(numbers)
# Output: 6

#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the first word longer than 4 letters.

# Solution
def first_long_word(words)
  words.find { |word| word.size > 4 }
end

words = ["cat", "door", "apple", "hi"]
p first_long_word(words)
# Output: "apple"


#------------------------------------------------------------------------------
# Problem 3: Write a function that finds the First Key-Value Pair with a Specific Value

def find_value_in_hash(hash, target)
  hash.find { |_, value| value == target }
end

data = { a: 1, b: 2, c: 3 }
p find_value_in_hash(data, 2)
# Output: [:b, 2]



count
# What it does: Returns the number of elements in a collection, or the count of elements matching a condition if a block is given.
# Why use it: Determining the total number of items (e.g., array.count) or those meeting specific criteria (e.g., array.count { |x| x > 10 }).

# Syntax:

# For Arrays:
array.count                            # Counts all elements.
array.count { |element| condition }    # Counts elements matching a condition.
array.count(value)                     # Counts elements equal to the value.

# For Hashes:
hash.count                             # Counts the total number of key-value pairs.
hash.count { |key, value| condition }  # Counts key-value pairs matching a condition.

#------------------------------------------------------------------------------
# Problem 1: Write a function that counts how many numbers are greater than 10.

def count_greater_than_ten(numbers)
  numbers.count { |num| num > 10 }
end

numbers = [5, 12, 13, 8, 20]
p count_greater_than_ten(numbers)
# Output: 3

#------------------------------------------------------------------------------
# Problem 2: Count occurrences of a specific element in an array.

def count_specific_element(array, target)
  array.count(target)
end

values = [1, 2, 2, 3, 3, 3]
p count_specific_element(values, 3)
# Output: 3

#------------------------------------------------------------------------------
# Problem 3: Count the total number of key-value pairs in a hash.

data = { a: 1, b: 2, c: 3 }
p data.count
# Output: 3

#------------------------------------------------------------------------------
# Problem 4: Count key-value pairs in a hash matching a condition.

def count_matching_pairs(hash)
  hash.count { |key, value| value > 1 }
end

hash = { a: 1, b: 2, c: 3 }
p count_matching_pairs(hash)
# Output: 2



reject
# What it does: Returns an array of elements for which the block condition is false.
# Why use it: To create a new collection without certain elements based on a condition. The opposite of .select

# Syntax:

# For Arrays:
array.reject { |element| condition }
# Returns a new array with elements that do NOT satisfy the condition.

# For Hashes:
hash.reject { |key, value| condition }
# Returns a new hash with key-value pairs that do NOT satisfy the condition.

#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of numbers and returns an array without negative numbers?

def remove_negatives(numbers)
  numbers.reject { |n| n < 0 }
end

nums = [-1, 2, -3, 4]
p remove_negatives(nums)
# Output: [2, 4]

#------------------------------------------------------------------------------
# Problem 2: Write a function that removes all even numbers from an array.

def reject_even_numbers(array)
  array.reject { |num| num.even? }
end

nums = [1, 2, 3, 4, 5, 6]
p reject_even_numbers(nums)
# Output: [1, 3, 5]

#------------------------------------------------------------------------------
# Problem 3: Write a function that exclude key-value pairs from a hash where the value is less than 10.

def reject_values_less_than_10(hash)
  hash.reject { |key, value| value < 10 }
end

data = { a: 5, b: 15, c: 8, d: 20 }
p reject_values_less_than_10(data)
# Output: { b: 15, d: 20 }

#------------------------------------------------------------------------------
# Problem 4: Write a function that exclude empty strings from an array.

def reject_empty_strings(strings)
  strings.reject { |str| str.empty? }
end

words = ["hello", "", "world", "", "ruby"]
p reject_empty_strings(words)
# Output: ["hello", "world", "ruby"]



any?
# What it does: Checks if at least one element meets the condition in the block.
# Why use it: Quick way to see if there’s a match for a given criterion.

# Syntax:      # Returns true if at least one element matches a condition.

# Array:
array.any? { |element| condition }

# Hash:
hash.any? { |key, value| condition }

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

# Syntax:     # Returns true if all elements match a condition.

# Array:
array.all? { |element| condition }

# Hash:
hash.all? { |key, value| condition }

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

# Syntax:     # Returns true if no elements match a condition.

# Array:
array.none? { |element| condition }

# Hash:
hash.none? { |key, value| condition }

#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of words and returns true if none of them start with "z"?

def none_start_with_z?(words)
  words.none? { |w| w.start_with?("z") }
end

words = ["apple", "cat", "banana"]
p none_start_with_z?(words)
# Output: true



sum
# What it does: Quickly calculates the sum of elements in an array or other Enumerable object.
# Why use it: Simplifies the process of adding up numbers (e.g., total points scored by a team).

# Syntax:

# Array:
array.sum                        # Returns the sum of all elements
array.sum { |element| block }    # Applies a transformation before summing.
array.sum(initial_value)         # Adds the elements to the initial value

# Hash:
hash.sum { |key, value| block } # Applies a transformation before summing key-value pairs.

#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the total sum of an array of integers.

def total_sum(numbers)
  numbers.sum
end

numbers = [1, 2, 3]
p total_sum(numbers)
# Output: 6


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the total sum of a range of numbers.

def sum_range(range)
  range.sum
end

p sum_range(1..5)
# Output: 15



sort_by
# What it does: Sorts a collection according to values computed in the given block.
# Why use it: Great for custom sorting based on a specific property of each element.

# Syntax:
collection.sort_by { |element| block }

# Array:
array.sort_by { |element| block }

# Hash:
hash.sort_by { |key, value| block }

#------------------------------------------------------------------------------
# Problem 1: Write a function that sort an array of numbers in ascending order.

def sort_numbers(array)
  array.sort_by { |num| num } # Sorts by the numbers themselves.
end

numbers = [5, 3, 8, 1]
p sort_numbers(numbers)
# Output: [1, 3, 5, 8]

#------------------------------------------------------------------------------
# Problem 2: Sort an array of strings by their length.

def sort_by_length(array)
  array.sort_by { |str| str.length } # Sorts by string length.
end

words = ["apple", "cat", "banana"]
p sort_by_length(words)
# Output: ["cat", "apple", "banana"]

#------------------------------------------------------------------------------
# Problem 3: Sort a hash by its keys.

def sort_hash_by_keys(hash)
  hash.sort_by { |key, _| key } # Sorts by keys (alphabetical order).
end

example_hash = { c: 3, a: 1, b: 2 }
p sort_hash_by_keys(example_hash)
# Output: [[:a, 1], [:b, 2], [:c, 3]]

#------------------------------------------------------------------------------
# Problem 4: Sort a hash by its values.

def sort_hash_by_values(hash)
  hash.sort_by { |_, value| value } # Sorts by values (numerical order).
end

example_hash = { c: 3, a: 1, b: 2 }
p sort_hash_by_values(example_hash)
# Output: [[:a, 1], [:b, 2], [:c, 3]]



min_by
# What it does: Finds the element with the minimum value as determined by the block.
# Why use it: Useful for retrieving the "smallest" item based on a custom comparison.

# Syntax:

# Array:
array.min_by { |element| block }

# Hash:
hash.min_by { |key, value| block }

#------------------------------------------------------------------------------
# Problem 1: Write a function that finds the minimum number in an array.

def find_min_number(array)
  array.min_by { |num| num } # Finds the element with the smallest value.
end

numbers = [5, 3, 8, 1]
p find_min_number(numbers)
# Output: 1

#------------------------------------------------------------------------------
# Problem 2: Write a function that finds the shortest string in an array.

def find_shortest_string(array)
  array.min_by { |str| str.length } # Finds the string with the smallest length.
end

words = ["apple", "cat", "banana"]
p find_shortest_string(words)
# Output: "cat"

#------------------------------------------------------------------------------
# Problem 3: Write a function that finds the key-value pair in a hash with the smallest value.

def find_min_value(hash)
  hash.min_by { |_, value| value } # Finds the pair with the smallest value.
end

example_hash = { a: 10, b: 5, c: 8 }
p find_min_value(example_hash)
# Output: [:b, 5]

#------------------------------------------------------------------------------
# Problem 4: Write a function that finds the key-value pair in a hash where the key is alphabetically smallest.

def find_min_key(hash)
  hash.min_by { |key, _| key } # Finds the pair with the smallest key alphabetically.
end

example_hash = { c: 3, a: 1, b: 2 }
p find_min_key(example_hash)
# Output: [:a, 1]



each_with_index
# What it does: Iterates through each element, providing both element and index.
# Why use it: Needed when you must access or use the index during iteration.

# Syntax:

# Array:
array.each_with_index { |element, index| block }

# Hash:
# (Hashes don't inherently support indexing, so this is rarely applicable.)

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



each_with_object
# What it does: Iterates through a collection and builds or updates an external object in the process.
# Why use it: Creating or populating a data structure (like a hash) while iterating.

# Syntax:

# Array:
array.each_with_object(initial_object) { |element, obj| block }
# `initial_object` is the object being built or modified (e.g., a hash or array).

# Hash:
hash.each_with_object(initial_object) { |(key, value), obj| block }

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




#------------------------------------------------------------------------------
# Low-importance methods (.group_by, .flat_map, .zip, .lazy) can be life-savers in specific scenarios but aren’t as frequent in standard easy/medium algorithm problems. Still, they’re good to have in your back pocket.
#------------------------------------------------------------------------------

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
