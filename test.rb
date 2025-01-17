#------------------------------------------------------------------------------
# Problem 2: Write a function that sorts an array of numbers in descending order.
def sort_numbers_desc(array)
  array.sort { |a, b| b <=> a } # Sorts the numbers in descending order.
end

numbers = [5, 3, 8, 1]
p sort_numbers_desc(numbers)
# Output: [8, 5, 3, 1]

# # Solution
# def sort_numbers_desc(array)
#   array.sort { |a, b| b <=> a } # Sorts the numbers in descending order.
# end
#
# numbers = [5, 3, 8, 1]
# p sort_numbers_desc(numbers)
# # Output: [8, 5, 3, 1]

#------------------------------------------------------------------------------
# Problem 3: Write a function that sorts an array of strings alphabetically.
def sort_strings(array)
  array.sort # Sorts strings alphabetically by default.
end

words = ["banana", "apple", "cherry"]
p sort_strings(words)
# Output: ["apple", "banana", "cherry"]

# # Solution
# def sort_strings(array)
#   array.sort # Sorts strings alphabetically by default.
# end
#
# words = ["banana", "apple", "cherry"]
# p sort_strings(words)
# # Output: ["apple", "banana", "cherry"]

#------------------------------------------------------------------------------
# Problem 5: Write a function that sorts a hash by its keys.
def sort_hash_by_keys(hash)
  hash.sort.to_h # Sorts key-value pairs by keys and converts the result back to a hash.
end

example_hash = { c: 3, a: 1, b: 2 }
p sort_hash_by_keys(example_hash)
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
  hash.sort { |(_, value1), (_, value2)| value1 <=> value2 }.to_h # Sorts key-value pairs by values.
end

example_hash = { c: 3, a: 1, b: 2 }
p sort_hash_by_values(example_hash)
# Output: { a: 1, b: 2, c: 3 }

# # Solution
# def sort_hash_by_values(hash)
#   hash.sort { |(_, value1), (_, value2)| value1 <=> value2 }.to_h # Sorts key-value pairs by values.
# end
#
# example_hash = { c: 3, a: 1, b: 2 }
# p sort_hash_by_values(example_hash)
# # Output: { a: 1, b: 2, c: 3 }
