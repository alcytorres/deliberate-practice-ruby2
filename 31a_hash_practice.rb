#------------------------------------------------------------------------------
# Highest-importance methods ( .keys, .values, .has_key?, .merge, .fetch, .select, .reject) appear regularly in typical hashing or dictionary tasks and are crucial for many solutions in easy/medium algorithmic problems.
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Problem 1: Write a function that returns an array of all keys in a given hash.

def all_keys(hash)

end

fruits = { apple: 1, banana: 2, cherry: 3 }
# p all_keys(fruits)
# Output: [:apple, :banana, :cherry]



# # Solution
# def all_keys(hash)
#   hash.keys
# end

# fruits = { apple: 1, banana: 2, cherry: 3 }
# p all_keys(fruits)
# # Output: [:apple, :banana, :cherry]



#------------------------------------------------------------------------------
# Problem 2: Write a function that prints the keys in a hash, one per line.

def print_keys(hash)

end

person = { name: "Alice", age: 25, city: "NYC" }
# print_keys(person)
# Output (each key on its own line):
# name
# age
# city



# # Solution
# def print_keys(hash)
#   hash.keys.each { |key| puts key }
#   # .keys extracts all keys from the hash.
#   # .each iterates through each key.
# end

# person = { name: "Alice", age: 25, city: "NYC" }
# print_keys(person)
# # Output (each key on its own line):
# # name
# # age
# # city



#------------------------------------------------------------------------------
# Problem 1: Write a function that returns all the values in a given hash.

def all_values(hash)

end

prices = { apple: 1.2, banana: 0.5, cherry: 2.0 }
# p all_values(prices)
# Output: [1.2, 0.5, 2.0]



# # Solution
# def all_values(hash)
#   hash.values
# end

# prices = { apple: 1.2, banana: 0.5, cherry: 2.0 }
# p all_values(prices)
# # Output: [1.2, 0.5, 2.0]


#------------------------------------------------------------------------------
# Problem 2: Write a function that prints all values in a hash, one per line.

def print_values(hash)

end

movie = { title: "Matrix", year: 1999, rating: 8.7 }
# print_values(movie)
# Output (each value on its own line):
# Matrix
# 1999
# 8.7



# # Solution
# def print_values(hash)
#   hash.values.each {|value| puts value}
# end

# movie = { title: "Matrix", year: 1999, rating: 8.7 }
# print_values(movie)
# # Output (each value on its own line):
# # Matrix
# # 1999
# # 8.7


#------------------------------------------------------------------------------
# Problem 1: Write a function that returns true if the hash contains the given key.

def hash_has_key?(hash, key)

end

data = { name: "Alice", age: 30 }

# p hash_has_key?(data, :name)
# # Output: true
# p hash_has_key?(data, :height)
# # Output: false


# # Solution
# def hash_has_key?(hash, key)
#   hash.has_key?(key)
# end

# data = { name: "Alice", age: 30 }

# p hash_has_key?(data, :name)
# # Output: true
# p hash_has_key?(data, :height)
# # Output: false


#------------------------------------------------------------------------------
# Problem 2: Write a function that takes a hash and a key as input and returns the value associated with the key if it exists; otherwise, return the string "Key not found".

def fetch_value_if_key_exists(hash, key)
  if hash.has_key?(key)
    hash[key]
    # Return the value associated with the key.
  else
    "Key not found"
  end
end

data = { name: "Alice", age: 30 }

# p fetch_value_if_key_exists(data, :age)
# # Output: 30
# p fetch_value_if_key_exists(data, :height)
# # Output: "Key not found"



# # Solution
# def fetch_value_if_key_exists(hash, key)
#   if hash.has_key?(key)
#   # Checks if the key is present in the hash
#     hash[key]
#     # Return the value associated with the key.
#   else
#     "Key not found"
#   end
# end

# data = { name: "Alice", age: 30 }

# p fetch_value_if_key_exists(data, :age)
# # Output: 30
# p fetch_value_if_key_exists(data, :height)
# # Output: "Key not found"


#------------------------------------------------------------------------------
# Problem 1: Write a function that merges two hashes, returning a new hash without modifying the originals.

def merge_hashes(hash1, hash2)

end

hash_a = { name: "Alice", age: 25 }
hash_b = { city: "NYC", occupation: "Engineer" }
# p merge_hashes(hash_a, hash_b)
# Output: { name: "Alice", age: 25, city: "NYC", occupation: "Engineer" }



# # Solution
# def merge_hashes(hash1, hash2)
#   hash1.merge(hash2)
# end

# hash_a = { name: "Alice", age: 25 }
# hash_b = { city: "NYC", occupation: "Engineer" }
# p merge_hashes(hash_a, hash_b)
# # Output: { name: "Alice", age: 25, city: "NYC", occupation: "Engineer" }


#------------------------------------------------------------------------------
# Problem 2: Write a function that merges two hashes, with values from the second hash overriding duplicates in the first.

def merge_override(hash1, hash2)

end

default_config = { timeout: 30, debug: false }
user_config = { debug: true }
# p merge_override(default_config, user_config)
# Output: { timeout: 30, debug: true }



# # Solution
# def merge_override(hash1, hash2)
#   hash1.merge(hash2)
#   # Note: hash2 overrides duplicates in hash1 because merge prioritizes its newer values.
# end

# default_config = { timeout: 30, debug: false }
# user_config = { debug: true }
# p merge_override(default_config, user_config)
# # Output: { timeout: 30, debug: true }


#------------------------------------------------------------------------------
# Problem 3: Write a function that merges two hashes, adding the values together for any duplicate keys.

def merge_with_custom_logic(hash1, hash2)

end

hash1 = { a: 1, b: 2 }
hash2 = { b: 3, c: 4 }
# p merge_with_custom_logic(hash1, hash2)
# Output: { a: 1, b: 5, c: 4 }



# # Solution
# def merge_with_custom_logic(hash1, hash2)
# hash1.merge(hash2) { |key, old_val, new_val| old_val + new_val }
# end

# hash1 = { a: 1, b: 2 }
# hash2 = { b: 3, c: 4 }
# p merge_with_custom_logic(hash1, hash2)
# # Output: { a: 1, b: 5, c: 4 }


#------------------------------------------------------------------------------
# Problem 1: Write a function that fetches a value from a hash given a key.

def fetch_value(hash, key)

end

person = { name: "Alice", age: 25 }
# p fetch_value(person, :name)
# Output: "Alice"



# # Solution
# def fetch_value(hash, key)
#   hash.fetch(key)
# end

# person = { name: "Alice", age: 25 }
# p fetch_value(person, :name)
# # Output: "Alice"


#------------------------------------------------------------------------------
# Problem 2: Write a function that fetches a value from a hash or returns a default if the key is missing.

def fetch_with_default(hash, key, default)

end

data = { name: "Alice", age: 30 }
# p fetch_with_default(data, :height, 170)
# Output: 170



# # Solution
# def fetch_with_default(hash, key, default)
#   hash.fetch(key, default)
# end

# data = { name: "Alice", age: 30 }
# p fetch_with_default(data, :height, 170)
# # Output: 170


#------------------------------------------------------------------------------
# Problem 3: Write a function that fetches the value for a given key from a hash. If the key is not present, the function should return a custom message using a block.

def fetch_with_block(hash, key)

end

data = { name: "Alice", age: 30 }
# p fetch_with_block(data, :height)
# Output: "height not found"


# # Solution
# def fetch_with_block(hash, key)
#   hash.fetch(key) { |missing_key| "#{missing_key} not found" }
# end

# data = { name: "Alice", age: 30 }
# p fetch_with_block(data, :height)
# # Output: "height not found"



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
#   # str.empty? = str == ""
# end

# words = ["hello", "", "world", "", "ruby"]
# p reject_empty_strings(words)
# # Output: ["hello", "world", "ruby"]




#------------------------------------------------------------------------------
# Medium-importance methods (.dig, .delete_if, .to_a, .to_h, .each_key, .each_value) fill more specific needs—safe nested access, destructive cleanup, or iterating in specialized ways.
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Problem 1: Write a function that retrieve a nested value from a hash.

def fetch_nested_value(hash, key1, key2)

end

data = { user: { name: "Alice", age: 30 } }

# p fetch_nested_value(data, :user, :name)
# # Output: "Alice"
# p fetch_nested_value(data, :user, :height)
# # Output: nil (key :height does not exist)



# # Solution
# def fetch_nested_value(hash, key1, key2)
#   hash.dig(key1, key2)
# end

# data = { user: { name: "Alice", age: 30 } }

# p fetch_nested_value(data, :user, :name)
# # Output: "Alice"
# p fetch_nested_value(data, :user, :height)
# # Output: nil (key :height does not exist)


#------------------------------------------------------------------------------
# Problem 2: Write a function that retrieve a nested value from an array.

def fetch_nested_array_value(array, index1, index2)

end

data = [[1, 2, 3], [4, 5, 6]]

# p fetch_nested_array_value(data, 1, 2)
# # Output: 6
# p fetch_nested_array_value(data, 2, 0)
# # Output: nil (index 2 does not exist)


# # Solution
# def fetch_nested_array_value(array, index1, index2)
#   array.dig(index1, index2)
# end

# data = [[1, 2, 3], [4, 5, 6]]

# p fetch_nested_array_value(data, 1, 2)
# # Output: 6
# p fetch_nested_array_value(data, 2, 0)
# # Output: nil (index 2 does not exist)


#------------------------------------------------------------------------------
# Problem 3: Write a function that retrieve a value from a mix of hash and array.

def fetch_mixed_nested_value(data, key1, index2)

end

data = { users: [{ name: "Alice" }, { name: "Bob" }] }

# p fetch_mixed_nested_value(data, :users, 1)
# # Output: { name: "Bob" }
# p fetch_mixed_nested_value(data, :users, 2)
# # Output: nil (index 2 does not exist)


# # Solution
# def fetch_mixed_nested_value(data, key1, index2)
#   data.dig(key1, index2)
# end

# data = { users: [{ name: "Alice" }, { name: "Bob" }] }

# p fetch_mixed_nested_value(data, :users, 1)
# # Output: { name: "Bob" }
# p fetch_mixed_nested_value(data, :users, 2)
# # Output: nil (index 2 does not exist)


#------------------------------------------------------------------------------
# Problem 1: Remove all even numbers from an array.

def remove_even_numbers!(array)

end

nums = [1, 2, 3, 4, 5, 6]
remove_even_numbers!(nums)
# p nums
# Output: [1, 3, 5]



# # Solution
# def remove_even_numbers!(array)
#   array.delete_if { |num| num.even? }
# end

# nums = [1, 2, 3, 4, 5, 6]
# remove_even_numbers!(nums)
# p nums
# # Output: [1, 3, 5]


#------------------------------------------------------------------------------
# Problem 2: Remove all words longer than 3 characters from an array.

def remove_long_words!(words)

end

words = ["cat", "dog", "elephant", "ant"]
remove_long_words!(words)
# p words
# Output: ["cat", "dog", "ant"]



# # Solution
# def remove_long_words!(words)
#   words.delete_if { |word| word.length > 3 }
# end

# words = ["cat", "dog", "elephant", "ant"]
# remove_long_words!(words)
# p words
# # Output: ["cat", "dog", "ant"]


#------------------------------------------------------------------------------
# Problem 3: Remove key-value pairs where the value is less than 10.

def remove_low_values!(hash)

end

data = { a: 5, b: 15, c: 8, d: 20 }
remove_low_values!(data)
# p data
# Output: { b: 15, d: 20 }



# def remove_low_values!(hash)
#   hash.delete_if { |key, value| value < 10 }
# end

# data = { a: 5, b: 15, c: 8, d: 20 }
# remove_low_values!(data)
# p data
# # Output: { b: 15, d: 20 }



#------------------------------------------------------------------------------
# Problem 1: Write a function that converts a range to an array.

def range_to_array(range)

end

range = (1..5)
# p range_to_array(range)
# Output: [1, 2, 3, 4, 5]


# # Solution
# def range_to_array(range)
#   range.to_a
# end

# range = (1..5)
# p range_to_array(range)
# # Output: [1, 2, 3, 4, 5]

#------------------------------------------------------------------------------
# Problem 2: Write a function that converts a hash to an array of key-value pairs.

def hash_to_array(hash)

end

hash = { a: 1, b: 2, c: 3 }
# p hash_to_array(hash)
# Output: [[:a, 1], [:b, 2], [:c, 3]]


# # Solution
# def hash_to_array(hash)
#   hash.to_a
# end

# hash = { a: 1, b: 2, c: 3 }
# p hash_to_array(hash)
# # Output: [[:a, 1], [:b, 2], [:c, 3]]


#------------------------------------------------------------------------------
# Problem 3: Write a function that converts an enumerator to an array.

def enumerator_to_array(enum)

end

enum = (1..3).each
# p enumerator_to_array(enum)
# Output: [1, 2, 3]



# # Solution
# def enumerator_to_array(enum)
#   enum.to_a
# end

# enum = (1..3).each
# p enumerator_to_array(enum)
# # Output: [1, 2, 3]


#------------------------------------------------------------------------------
# Problem 1: Write a function that converts an array of key-value pairs into a hash.

def array_to_hash(array)

end

array = [[:a, 1], [:b, 2], [:c, 3]]
# p array_to_hash(array)
# Output: { a: 1, b: 2, c: 3 }


# # Solution
# def array_to_hash(array)
#   array.to_h
# end

# array = [[:a, 1], [:b, 2], [:c, 3]]
# p array_to_hash(array)
# # Output: { a: 1, b: 2, c: 3 }

#------------------------------------------------------------------------------
# Problem 2: Write a function that converts an array of key-value pairs with duplicates (last one wins).

def array_with_duplicates_to_hash(array)

end

array = [[:a, 1], [:b, 2], [:a, 3]]
# p array_with_duplicates_to_hash(array)
# Output: { a: 3, b: 2 } (last :a pair wins)


# # Solution
# def array_with_duplicates_to_hash(array)
#   array.to_h
#   # If there are duplicate keys, the last key-value pair wins.
# end

# array = [[:a, 1], [:b, 2], [:a, 3]]
# p array_with_duplicates_to_hash(array)
# # Output: { a: 3, b: 2 } (last :a pair wins)

#------------------------------------------------------------------------------
# Problem 3: Write a function that converts an enumerator of pairs to a hash.

def enumerator_to_hash(enum)

end

enum = [[:x, 10], [:y, 20]].each
# p enumerator_to_hash(enum)
# Output: { x: 10, y: 20 }


# # Solution
# def enumerator_to_hash(enum)
#   enum.to_h
# end

# enum = [[:x, 10], [:y, 20]].each
# p enumerator_to_hash(enum)
# # Output: { x: 10, y: 20 }


#------------------------------------------------------------------------------
# Problem 1: Write a function that prints all keys in a hash.

def print_keys(hash)

end

data = { name: "Alice", age: 30, city: "New York" }
# print_keys(data)
# Output:
# name
# age
# city


# # Solution
# def print_keys(hash)
#   hash.each_key { |key| puts key }
# end

# data = { name: "Alice", age: 30, city: "New York" }
# print_keys(data)
# # Output:
# # name
# # age
# # city

#------------------------------------------------------------------------------
# Problem 2: Write a function that collects all keys into an array.

def collect_keys(hash)
  keys = []
  hash.each_key { |key| keys << key }
  keys
end

data = { name: "Alice", age: 30, city: "New York" }
# p collect_keys(data)
# Output: [:name, :age, :city]



# # Solution
# def collect_keys(hash)
#   keys = []
#   hash.each_key { |key| keys << key }
#   keys
# end

# data = { name: "Alice", age: 30, city: "New York" }
# p collect_keys(data)
# # Output: [:name, :age, :city]


#------------------------------------------------------------------------------
# Problem 1: Write a function that prints all values in a hash.

def print_values(hash)

end

data = { name: "Alice", age: 30, city: "New York" }
# print_values(data)
# Output:
# Alice
# 30
# New York


# # Solution
# def print_values(hash)
#   hash.each_value { |value| puts value }
# end

# data = { name: "Alice", age: 30, city: "New York" }
# print_values(data)
# # Output:
# # Alice
# # 30
# # New York

#------------------------------------------------------------------------------
# Problem 2: Write a function that collect all values into an array.

def collect_values(hash)
  values = []
  hash.each_value { |value| values << value }
  values
end

data = { name: "Alice", age: 30, city: "New York" }
# p collect_values(data)
# Output: ["Alice", 30, "New York"]



# # Solution
# def collect_values(hash)
#   values = []
#   hash.each_value { |value| values << value }
#   values
# end

# data = { name: "Alice", age: 30, city: "New York" }
# p collect_values(data)
# # Output: ["Alice", 30, "New York"]




#------------------------------------------------------------------------------
# Lower-importance methods (.transform_keys, .transform_values, .invert) are more specialized, helping handle unique transformations or reversed lookups.
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Problem 1: Write a function that converts all symbol keys to strings.

def transform_keys_to_strings(hash)

end

transform_hash = { one: 1, two: 2 }
# p transform_keys_to_strings(transform_hash)
# Output: { "one" => 1, "two" => 2 }


# # Solution
# def transform_keys_to_strings(hash)
#   hash.transform_keys { |key| key.to_s }
# end

# transform_hash = { one: 1, two: 2 }
# p transform_keys_to_strings(transform_hash)
# # Output: { "one" => 1, "two" => 2 }


#------------------------------------------------------------------------------
# Problem 2: Write a function that converts all keys to uppercase.

def keys_to_uppercase(hash)

end

data = { name: "Alice", age: 30, city: "New York" }
# p keys_to_uppercase(data)
# Output: { NAME: "Alice", AGE: 30, CITY: "New York" }



# # Solution
# def keys_to_uppercase(hash)
#   hash.transform_keys { |key| key.to_s.upcase.to_sym }
# end

# data = { name: "Alice", age: 30, city: "New York" }
# p keys_to_uppercase(data)
# # Output: { NAME: "Alice", AGE: 30, CITY: "New York" }


#------------------------------------------------------------------------------
# Problem 3: Write a function that takes a hash and a prefix string as input, and returns a new hash with all the keys prefixed by "user_", keeping the keys as symbols.

def prefix_keys(hash, prefix)

end

data = { name: "Alice", age: 30 }
# p prefix_keys(data, "user_")
# Output: { user_name: "Alice", user_age: 30 }



# # Solution
# def prefix_keys(hash, prefix)
#   hash.transform_keys { |key| "#{prefix}#{key}".to_sym }
# end

# data = { name: "Alice", age: 30 }
# p prefix_keys(data, "user_")
# # Output: { user_name: "Alice", user_age: 30 }


#------------------------------------------------------------------------------
# Problem 4: Write a function that takes a hash with string keys and converts all the keys to symbols in place, modifying the original hash.

def keys_to_symbols_in_place!(hash)

end

data = { "name" => "Alice", "age" => 30 }
keys_to_symbols_in_place!(data)
# p data
# Output: { name: "Alice", age: 30 }



# # Solution
# def keys_to_symbols_in_place!(hash)
#   hash.transform_keys! { |key| key.to_sym }
# end

# data = { "name" => "Alice", "age" => 30 }
# keys_to_symbols_in_place!(data)
# p data
# # Output: { name: "Alice", age: 30 }


#------------------------------------------------------------------------------
# Problem 1: Write a function that doubles all values in a hash.

def double_values(hash)

end

data = { a: 1, b: 2, c: 3 }
# p double_values(data)
# Output: { a: 2, b: 4, c: 6 }



# # Solution
# def double_values(hash)
#   hash.transform_values { |value| value * 2 }
# end

# data = { a: 1, b: 2, c: 3 }
# p double_values(data)
# # Output: { a: 2, b: 4, c: 6 }

#------------------------------------------------------------------------------
# Problem 2: Write a function that converts all values to strings.

def values_to_strings(hash)

end

data = { a: 1, b: 2, c: 3 }
# p values_to_strings(data)
# Output: { a: "1", b: "2", c: "3" }



# # Solution
# def values_to_strings(hash)
#   hash.transform_values { |value| value.to_s }
# end

# data = { a: 1, b: 2, c: 3 }
# p values_to_strings(data)
# # Output: { a: "1", b: "2", c: "3" }

#------------------------------------------------------------------------------
# Problem 3: Write a function that takes a hash and a suffix string as input, and returns a new hash where the suffix is appended to each value in the hash.

def append_to_values(hash, suffix)

end

data = { name: "Alice", city: "New York" }
# p append_to_values(data, "!")
# Output: { name: "Alice!", city: "New York!" }



# # Solution
# def append_to_values(hash, suffix)
#   hash.transform_values { |value| "#{value}#{suffix}" }
# end

# data = { name: "Alice", city: "New York" }
# p append_to_values(data, "!")
# # Output: { name: "Alice!", city: "New York!" }

#------------------------------------------------------------------------------
# Problem 4: Write a function that takes a hash with mixed value types (e.g., strings, numbers) and returns a new hash where string values are converted to uppercase, numeric values are incremented by 10, and other values remain unchanged.

def modify_mixed_values(hash)
  hash.transform_values do |value|
    case value
    when String then value.upcase
    when Numeric then value + 10
    else value
    end
  end
end

data = { name: "Alice", age: 30, city: "new york" }
# p modify_mixed_values(data)
# Output: { name: "ALICE", age: 40, city: "NEW YORK" }



# # Solution
# def modify_mixed_values(hash)
#   hash.transform_values do |value|
#     case value
#     when String then value.upcase
#     when Numeric then value + 10
#     else value
#     end
#   end
# end

# data = { name: "Alice", age: 30, city: "new york" }
# p modify_mixed_values(data)
# # Output: { name: "ALICE", age: 40, city: "NEW YORK" }

#------------------------------------------------------------------------------
# Problem 5: Write a function that takes a hash and doubles all its values in place, modifying the original hash.

def double_values_in_place!(hash)

end

data = { a: 1, b: 2, c: 3 }
double_values_in_place!(data)
# p data
# Output: { a: 2, b: 4, c: 6 }



# # Solution
# def double_values_in_place!(hash)
#   hash.transform_values! { |value| value * 2 }
# end

# data = { a: 1, b: 2, c: 3 }
# double_values_in_place!(data)
# p data
# # Output: { a: 2, b: 4, c: 6 }


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in a hash and returns a new hash with inverted keys and values.

def invert_hash(hash)

end

invert_example = { a: 1, b: 2 }

# p invert_hash(invert_example)
# Output: { 1 => :a, 2 => :b }



# # Solution
# def invert_hash(hash)
#   hash.invert
# end

# invert_example = { a: 1, b: 2 }

# p invert_hash(invert_example)
# # Output: { 1 => :a, 2 => :b }