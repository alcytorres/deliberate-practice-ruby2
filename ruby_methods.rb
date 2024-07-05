# Best Ruby Methods

# These methods are fundamental and are frequently used in Ruby programming for various common tasks such as iteration, transformation, filtering, and basic data manipulation.


# each_with_index


# .split
Array = "Geeks For Geeks".split
puts Array

# Output
# Geeks
# For
# Geeks

# .split('')
Array1 = "fly".split('')
puts Array1

# Output
# f
# l
# y



# each

# Description: Iterates over each element in a collection, such as an array or hash.
# Primary Use Case: Looping through elements in a collection to perform an action.

# Example:
[1, 2, 3].each { |num| puts num }
# => 1, 2, 3


# each do

# Description: Iterates over each element in a collection, such as an array or hash.
# Primary Use Case: Looping through elements in a collection to perform an action.

# Example
[1, 2, 3].each do |num|
  puts num
end
# Output:
# 1
# 2
# 3




# map
# Description: Creates a new array containing the values returned by the block.
# Primary Use Case: Transforming each element of a collection.

# Example:
result = [1, 2, 3].map { |num| num * 3 }
puts result  # => [3, 6, 9]


# select

# Description: Returns a new array containing all elements of the collection for which the given block returns a true value.
# Primary Use Case: Filtering elements in a collection based on a condition.

# Example:
result = [1, 2, 3, 4].select { |num| num.even? }
puts result

# Output:
# 2
# 4



# sort

# Description: Returns a new array with the elements sorted.
# Primary Use Case: Ordering elements in an array.

# Example:
result = [3, 1, 2].sort
puts result
# Output:
# 1
# 2
# 3


# .find (or .detect)

# Description: Returns the first element for which the block returns true.
# Primary Use Case: Finding a single element.

# Example:

found = [1, 2, 3].find { |number| number.even? }
puts found
# Output:
# 2


# .reduce (or .inject)

# Description: Combines all elements of an array by applying a binary operation, specified by a block.
# Primary Use Case: Accumulating values.

# Example:

sum = [1, 3, 7].reduce(0) { |acc, number| acc + number }
puts sum
# Output:
# 11



# include?

# Description: Returns true if the given object is present in the collection, false otherwise.
# Primary Use Case: Checking for the presence of an element in a collection.

# Example:
puts [1, 2, 3].include?(2)
puts "hello".include?("e")
# Output:
# true
# true



# .count

# Description: Returns the number of elements.
# Primary Use Case: Counting elements.

# Example:
count = [1, 2, 3].count
puts count
# Output:
# 3



# .any?

# Description: Returns true if at least one element meets the condition in the block.
# Primary Use Case: Checking if any element meets a condition.

# Example:
puts [1, 2, 3].any? { |number| number.even? }
# Output:
# true



# uniq

# Description: Returns a new array by removing duplicate values.
# Primary Use Case: Removing duplicates.

# Example:
unique = [3, 5, 5, 11].uniq
puts unique.inspect
# Output:
# [3, 5, 11]


# first

# Description: Returns the first element of the collection.
# Primary Use Case: Accessing the initial element in an array or string.

# Example:
puts [1, 2, 3].first
puts "hello".chars.first
# Output:
# 1
# h



# last

# Description: Returns the last element of the collection.
# Primary Use Case: Accessing the final element in an array or string.

# Example:
puts [1, 2, 3].last
puts "hello".chars.last
# Output:
# 3
# o



# to_s

# Description: Returns the string representation of an object.
# Primary Use Case: Converting an object to a string for output or concatenation.

# Example:
puts 123.to_s
puts [1, 2, 3].to_s
# Output:
# 123
# [1, 2, 3]




