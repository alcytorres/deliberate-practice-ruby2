# .sort_by
# What it does: Sorts elements based on a transformation applied in the block.
# Returns a new array with the elements sorted according to the block's result.
# Why use it: For clean and simple sorting by specific criteria.

#------------------------------------------------------------------------------
# Array Example
# Syntax:
# array.sort_by { |element| block }

# Problem 1: Sort an array of numbers in ascending order.
def sort_numbers(array)
  array.sort_by { |num| num } # Sorts by the numbers themselves.
end

numbers = [5, 3, 8, 1]
p sort_numbers(numbers)
# Output: [1, 3, 5, 8]

# Problem 2: Sort an array of strings by their length.
def sort_by_length(array)
  array.sort_by { |str| str.length } # Sorts by string length.
end

words = ["apple", "cat", "banana"]
p sort_by_length(words)
# Output: ["cat", "apple", "banana"]

#------------------------------------------------------------------------------
# Hash Example
# Syntax:
# hash.sort_by { |key, value| block }

# Problem 3: Sort a hash by its keys.
def sort_hash_by_keys(hash)
  hash.sort_by { |key, _| key } # Sorts by keys (alphabetical order).
end

example_hash = { c: 3, a: 1, b: 2 }
p sort_hash_by_keys(example_hash)
# Output: [[:a, 1], [:b, 2], [:c, 3]]

# Problem 4: Sort a hash by its values.
def sort_hash_by_values(hash)
  hash.sort_by { |_, value| value } # Sorts by values (numerical order).
end

example_hash = { c: 3, a: 1, b: 2 }
p sort_hash_by_values(example_hash)
# Output: [[:a, 1], [:b, 2], [:c, 3]]

#------------------------------------------------------------------------------
# Key Notes:
# 1. `sort_by` is ideal when you want to sort based on a specific attribute or transformation.
# 2. **Arrays**: Each element is passed to the block for sorting.
# 3. **Hashes**: The block receives `|key, value|`, and it returns a sorted array of key-value pairs.
# 4. To convert a sorted hash back to a hash, use `to_h`:
#    sorted_hash = hash.sort_by { |key, value| value }.to_h
