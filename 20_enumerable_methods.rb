# .each
# What it does: Iterates through every element in a collection (array, hash, etc.).
# Why use it: Performing an action on each item (e.g., printing values, modifying data in place).

# Syntax:
collection.each do |element|
  # iterate over each element
end

# single-line form:
collection.each { |element| puts element }
#------------------------------------------------------------------------------
# Problem 1: Write a function that prints each number of an array.
# Solution 1
def print_elements(numbers)
  numbers.each { |num| puts num }
end

numbers = [1, 2, 3]
print_elements(numbers)
# Expected Output:
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
# Expected Output:
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
# Expected Output:
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
# Expected Output:
# "name => Alice"
# "age => 30"



# .map
# What it does: Returns a new array (or collection) where each element is transformed based on the provided block.
# Why use it: Create a modified version of your original data (e.g., incrementing numbers, converting strings to uppercase).

# Syntax:
collection.map do |element|
  # return transformed element
end
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes an array of numbers and returns a new array where each number is incremented by 1.
# Solution 1
def increment_numbers(numbers)
  numbers.map { |num| num + 1 }
end

numbers = [1, 2, 3]
p increment_numbers(numbers)
# Expected Output: [2, 3, 4]


# Solution 2
def increment_numbers(numbers)
  numbers.map do |num|
    num + 1
  end
end

numbers = [1, 2, 3]
p increment_numbers(numbers)
# Expected Output: [2, 3, 4]



# .select
# What it does: Returns a new array containing only the elements that match a given condition.
# Why use it: Filtering data, such as extracting only even numbers or finding students with high scores.

# Syntax:
collection.select do |element|
  # condition that returns true or false
end
#------------------------------------------------------------------------------
# Problem 1: Write a function that filters out odd numbers, returning only even numbers.
# Solution 1
def evens_only(numbers)
  numbers.select { |num| num.even? }
end

numbers = [1, 2, 3, 4, 5]
p evens_only(numbers)
# Expected Output: [2, 4]


# Solution 2
def evens_only(numbers)
  numbers.select do |num|
    num % 2 == 0
  end
end

numbers = [1, 2, 3, 4, 5]
p evens_only(numbers)
# Expected Output: [2, 4]


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns words longer than 3 letters.
# Solution 1
def longer_than_three(words)
  words.select { |word| word.length > 3 }
end

words = ["apple", "car", "door"]
p longer_than_three(words)
# Expected Output: ["apple", "door"]


# Solution 2
def longer_than_three(words)
  words.select do |word|
    word.size > 3
  end
end

words = ["apple", "car", "door"]
p longer_than_three(words)
# Expected Output: ["apple", "door"]



# .count
# What it does: Returns the number of elements in a collection, or the count of elements matching a condition if a block is given.
# Why use it: Determining the total number of items (e.g., array.count) or those meeting specific criteria (e.g., array.count { |x| x > 10 }).

# Syntax:
collection.count do |element|
  # condition that returns true or false
end

# or simply:
collection.count
# (for total count of elements)
#------------------------------------------------------------------------------
# Problem 1: Write a function that counts how many numbers are greater than 10.
# Solution 1
def count_greater_than_ten(numbers)
  numbers.count { |num| num > 10 }
end

numbers = [5, 12, 13, 8, 20]
p count_greater_than_ten(numbers)
# Expected Output: 3


# Solution 2
def count_greater_than_ten(numbers)
  numbers.count do |num|
    num > 10
  end
end

numbers = [5, 12, 13, 8, 20]
p count_greater_than_ten(numbers)
# Expected Output: 3



# .reduce or .inject
# What it does: Accumulates a value by iterating through all elements in a collection, applying an operation (e.g., addition).
# Why use it: To condense a collection into a single value by repeatedly applying an operation (e.g., summing up all prices in a cart).

# Syntax:
collection.reduce(initial_value) do |accumulator, element|
  # return updated accumulator
end
#------------------------------------------------------------------------------
# Problem 1: Write a function that sums all elements in an array.
# Solution 1
def sum_array(numbers)
  numbers.reduce(0) { |accumulator, num| accumulator + num }
end

numbers = [1, 2, 3, 4]
p sum_array(numbers)
# Expected Output: 10


# Solution 2
def sum_array(numbers)
  numbers.reduce(0) do |accumulator, num|
    accumulator + num
  end
end

numbers = [1, 2, 3, 4]
p sum_array(numbers)
# Expected Output: 10


#------------------------------------------------------------------------------
# Problem 2: Write a function that finds the product of all elements in an array.
# Solution 1
def product_of_array(numbers)
  numbers.reduce(1) { |accumulator, num| accumulator * num }
end

numbers = [2, 3, 4]
p product_of_array(numbers)
# Expected Output: 24


#------------------------------------------------------------------------------
# Problem 3: Write a function that returns the total sum of an array of integers.
# Solution 1
def total_sum(numbers)
  numbers.reduce(:+)
end

numbers = [1, 2, 3, 4]
p total_sum(numbers)
# Expected Output: 10


#------------------------------------------------------------------------------
# Problem 4: Write a function that returns the total sum of a range of numbers.
# Solution 1
def sum_range(range)
  range.reduce(:+)
end

p sum_range(1..5)
# Expected Output: 15



# .each_with_object
# What it does: Iterates through a collection and builds or updates an external object in the process.
# Why use it: Creating or populating a data structure (like a hash) while iterating.

# Syntax:
collection.each_with_object(object) do |element, obj|
  # update obj with element
end
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array of words and returns a hash mapping each word to its length?
# Solution
def word_lengths(words)
  words.each_with_object({}) do |word, hash|
    hash[word] = word.length
  end
end

words = ["cat", "bird"] # Output: {"cat"=>3, "bird"=>4}
p word_lengths(words)



# .find
# What it does: Returns the first element in a collection that matches a given condition, or nil if no element matches.
# Why use it: Searching through data to get the initial match (e.g., finding the first user over age 18).

# Syntax:
collection.find do |element|
  # condition that returns true or false
end
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the first even number in an array.
# Solution 1
def first_even(numbers)
  numbers.find { |num| num.even? }
end

numbers = [1, 3, 5, 6, 7]
p first_even(numbers)
# Expected Output: 6


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the first word longer than 4 letters.
# Solution 1
def first_long_word(words)
  words.find { |word| word.length > 4 }
end

words = ["cat", "door", "apple", "hi"]
p first_long_word(words)
# Expected Output: "apple"


# Solution 2
def first_long_word(words)
  words.find do |word|
    word.size > 4
  end
end

words = ["cat", "door", "apple", "hi"]
p first_long_word(words)
# Expected Output: "apple"



# .sum
# What it does: Quickly calculates the sum of elements in an array or other Enumerable object.
# Why use it: Simplifies the process of adding up numbers (e.g., total points scored by a team).

# Syntax:
collection.sum
# or
collection.sum { |element| element * 2 }
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the total sum of an array of integers.
# Solution 1
def total_sum(numbers)
  numbers.sum
end

numbers = [1, 2, 3]
p total_sum(numbers)
# Expected Output: 6


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the total sum of a range of numbers.
# Solution 1
def sum_range(range)
  range.sum
end

p sum_range(1..5)
# Expected Output: 15








# .min_by
# What it does: Finds the element with the minimum value as determined by the block.
# Why use it: Useful for retrieving the "smallest" item based on a custom comparison.

# Syntax:
collection.min_by do |element|
  # expression used to compare
end
#------------------------------------------------------------------------------


# .sort_by
# What it does: Sorts a collection according to values computed in the given block.
# Why use it: Great for custom sorting based on a specific property of each element.

# Syntax:
collection.sort_by do |element|
  # expression used as sort key
end
#------------------------------------------------------------------------------


# .reject
# What it does: Returns an array of elements for which the block condition is false.
# Why use it: Opposite of .select — filters out elements you don't want.

# Syntax:
collection.reject do |element|
  # condition that returns true or false
end
#------------------------------------------------------------------------------


# .each_with_index
# What it does: Iterates through each element, providing both element and index.
# Why use it: Needed when you must access or use the index during iteration.

# Syntax:
collection.each_with_index do |element, index|
  # do something with element and index
end
#------------------------------------------------------------------------------


# .any?
# What it does: Checks if at least one element meets the condition in the block.
# Why use it: Quick way to see if there’s a match for a given criterion.

# Syntax:
collection.any? do |element|
  # condition that returns true or false
end
#------------------------------------------------------------------------------


# .all?
# What it does: Checks if all elements meet the condition in the block.
# Why use it: Validates that every item in the collection satisfies a requirement.

# Syntax:
collection.all? do |element|
  # condition that returns true or false
end
#------------------------------------------------------------------------------


# .none?
# What it does: Checks if no elements in the collection meet the condition in the block.
# Why use it: Confirm that a certain condition does not apply to any element.

# Syntax:
collection.none? do |element|
  # condition that returns true or false
end
#------------------------------------------------------------------------------


# .group_by
# What it does: Groups collection elements into a hash, keyed by the result of the block.
# Why use it: Useful for categorizing elements into multiple groups.

# Syntax:
collection.group_by do |element|
  # return grouping criterion
end
#------------------------------------------------------------------------------


# .flat_map
# What it does: Maps each element to a new array and then flattens the result by one level.
# Why use it: Efficient way to transform nested structures into a single-level collection.

# Syntax:
collection.flat_map do |element|
  # return an array of transformed elements
end
#------------------------------------------------------------------------------


# .zip
# What it does: Combines elements from multiple arrays (or enumerables) in sequence, creating sub-arrays.
# Why use it: Align elements from two or more collections in parallel.

# Syntax:
array1.zip(array2, array3) do |elements|
  # elements is an array of corresponding items from each array
end
#------------------------------------------------------------------------------


# .lazy
# What it does: Creates a lazy enumerator, which processes elements on-demand.
# Why use it: Useful for very large collections, as it avoids building large intermediate arrays.

# Syntax:
collection.lazy
  .map { |x| x * 2 }
  .select { |x| x > 10 }
  .first(5)
#------------------------------------------------------------------------------
