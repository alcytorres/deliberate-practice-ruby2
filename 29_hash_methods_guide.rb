keys
# What it does: Returns an array of all the keys in a hash.
# Why use it: Quickly iterating over or verifying the existence of specific keys.

# Syntax:
hash.keys

#------------------------------------------------------------------------------
# Problem 1: Write a function that returns an array of all keys in a given hash.

def all_keys(hash)
  hash.keys
end

fruits = { apple: 1, banana: 2, cherry: 3 }
p all_keys(fruits)
# Output: [:apple, :banana, :cherry]


#------------------------------------------------------------------------------
# Problem 2: Write a function that prints the keys in a hash, one per line.

def print_keys(hash)
  hash.keys.each { |key| puts key }
end

person = { name: "Alice", age: 25, city: "NYC" }
print_keys(person)
# Output (each key on its own line):
# name
# age
# city



values
# What it does: Returns an array of all the values in a hash.
# Why use it: Accessing the data stored in a hash without needing the keys.

# Syntax:
hash.values
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns all the values in a given hash.
# Solution 1
def all_values(hash)
  hash.values
end

prices = { apple: 1.2, banana: 0.5, cherry: 2.0 }
p all_values(prices)
# Output: [1.2, 0.5, 2.0]


#------------------------------------------------------------------------------
# Problem 2: Write a function that prints all values in a hash, one per line.

def print_values(hash)
  hash.values.each {|value| puts value}
end

movie = { title: "Matrix", year: 1999, rating: 8.7 }
print_values(movie)
# Output (each value on its own line):
# Matrix
# 1999
# 8.7



merge
# What it does: Combines two hashes into a new hash, overwriting duplicates with the second hash’s values.
# Why use it: Ideal for creating a single hash from multiple sources, especially when you want to control which values take precedence.

# Note: Values from the second hash override duplicates in the first hash because merge prioritizes the newer values.

# Syntax:
# Returns a new hash with combined key-value pairs
hash1.merge(hash2)

# Uses the block to determine the value for duplicate keys.
hash1.merge(hash2) { |key, old_val, new_val| block }

#------------------------------------------------------------------------------
# Problem 1: Write a function that merges two hashes, returning a new hash without modifying the originals.

def merge_hashes(hash1, hash2)
  hash1.merge(hash2)
end

hash_a = { name: "Alice", age: 25 }
hash_b = { city: "NYC", occupation: "Engineer" }
p merge_hashes(hash_a, hash_b)
# Output: { name: "Alice", age: 25, city: "NYC", occupation: "Engineer" }


#------------------------------------------------------------------------------
# Problem 2: Write a function that merges two hashes, with values from the second hash overriding duplicates in the first.

def merge_override(hash1, hash2)
  hash1.merge(hash2)
end

default_config = { timeout: 30, debug: false }
user_config = { debug: true }
p merge_override(default_config, user_config)
# Output: { timeout: 30, debug: true }


#------------------------------------------------------------------------------
# Problem 3: Write a function that merges hashes with a custom block for duplicate keys.

def merge_with_custom_logic(hash1, hash2)
  hash1.merge(hash2) { |key, old_val, new_val| old_val + new_val }
end

hash1 = { a: 1, b: 2 }
hash2 = { b: 3, c: 4 }
p merge_with_custom_logic(hash1, hash2)
# Output: { a: 1, b: 5, c: 4 }



fetch
# What it does: Retrieves the value for a given key, allowing you to specify a default value or custom error message if the key is not found.
# Why use it: Prevents errors by providing a fallback when a key is missing, ensuring safer hash lookups.

# Syntax:

# Hashes:
hash.fetch(key)                          # Raises KeyError if the key is not found
hash.fetch(key, default_value)           # Returns default_value if the key is not found
hash.fetch(key) { |key| block }          # Executes the block if the key is not found

# Arrays:
array.fetch(index)                       # Raises IndexError if the index is out of bounds
array.fetch(index, default_value)        # Returns default_value if the index is out of bounds
array.fetch(index) { |index| block }     # Executes the block if the index is out of bounds

#------------------------------------------------------------------------------
# Problem 1: Write a function that fetches a value from a hash given a key.

def fetch_value(hash, key)
  hash.fetch(key)
end

person = { name: "Alice", age: 25 }
p fetch_value(person, :name)
# Output: "Alice"


#------------------------------------------------------------------------------
# Problem 2: Write a function that fetches a value from a hash or returns a default if the key is missing.

def fetch_with_default(hash, key, default)
  hash.fetch(key, default)
end

data = { name: "Alice", age: 30 }
p fetch_with_default(data, :height, 170)
# Output: 170

#------------------------------------------------------------------------------
# Problem 3: Write a function that handle a missing key with a block.

def fetch_with_block(hash, key)
  hash.fetch(key) { |missing_key| "#{missing_key} not found" }
end

data = { name: "Alice", age: 30 }
p fetch_with_block(data, :height)
# Output: "height not found"




dig
# What it does: Safely accesses nested hash values without causing an error if a key is missing.
# Why use it: Simplifies accessing deeply nested data structures by avoiding nil checks or exceptions.

# Syntax:

# Hashes:
hash.dig(key1, key2, ...)           # Accesses nested keys in a hash.

# Arrays
array.dig(index1, index2, ...)      # Accesses nested indices in an array.

#------------------------------------------------------------------------------
# Problem 1: Write a function that retrieve a nested value from a hash.

def fetch_nested_value(hash, key1, key2)
  hash.dig(key1, key2)
end

data = { user: { name: "Alice", age: 30 } }
p fetch_nested_value(data, :user, :name)
# Output: "Alice"

p fetch_nested_value(data, :user, :height)
# Output: nil (key :height does not exist)

#------------------------------------------------------------------------------
# Problem 2: Write a function that retrieve a nested value from an array.

def fetch_nested_array_value(array, index1, index2)
  array.dig(index1, index2)
end

data = [[1, 2, 3], [4, 5, 6]]
p fetch_nested_array_value(data, 1, 2)
# Output: 6

p fetch_nested_array_value(data, 2, 0)
# Output: nil (index 2 does not exist)

#------------------------------------------------------------------------------
# Problem 3: Write a function that retrieve a value from a mix of hash and array.

def fetch_mixed_nested_value(data, key1, index2)
  data.dig(key1, index2)
end

data = { users: [{ name: "Alice" }, { name: "Bob" }] }
p fetch_mixed_nested_value(data, :users, 1)
# Output: { name: "Bob" }

p fetch_mixed_nested_value(data, :users, 2)
# Output: nil (index 2 does not exist)



has_key?
# What it does: Checks if the hash contains a given key (returns true or false).
# Why use it: Quickly verify the presence of a key before accessing or modifying it.

# Syntax:
hash.has_key?(key)

#------------------------------------------------------------------------------
# Problem 1: Write a function that returns true if the hash contains the given key.

def hash_has_key?(hash, key)
  hash.has_key?(key)
end

data = { name: "Alice", age: 30 }
p hash_has_key?(data, :name)
# Output: true

p hash_has_key?(data, :height)
# Output: false


#------------------------------------------------------------------------------
# Problem 2: Write a function that uses .has_key? before fetching a value to avoid errors.

def fetch_value_if_key_exists(hash, key)
  if hash.has_key?(key)
    hash[key]
  else
    "Key not found"
  end
end

data = { name: "Alice", age: 30 }
p fetch_value_if_key_exists(data, :age)
# Output: 30

p fetch_value_if_key_exists(data, :height)
# Output: "Key not found"




invert
# What it does: Returns a new hash with keys and values swapped.
# Why use it: Invert mappings, such as for lookups by value instead of key.

# Syntax:
hash.invert

#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in a hash and returns a new hash with inverted keys and values.

def invert_hash(hash)
  hash.invert
end

invert_example = { a: 1, b: 2 }
p invert_hash(invert_example)
# Output: { 1 => :a, 2 => :b }



select
# What it does: Filters elements from a collection (array or hash) based on a condition, keeping only the elements that match the condition.
# Why use it: To create a new collection with specific elements that meet the criteria.

# Syntax:

# Arrays:
array.select { |element| condition }
# Returns a new array with elements that satisfy the condition.

# Hashes:
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



reject
# What it does: Returns an array of elements for which the block condition is false.
# Why use it: To create a new collection without certain elements based on a condition. The opposite of .select

# Syntax:

# Arrays:
array.reject { |element| condition }
# Returns a new array with elements that do NOT satisfy the condition.

# Hashes:
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



to_a
# What it does: Converts a collection into an array.
# Why use it: To transform other data structures like hashes, ranges, or enumerators into an array.

# Syntax:
collection.to_a
# Returns the array representation of the collection.

#------------------------------------------------------------------------------
# Problem 1: Write a function that converts a range to an array.

def range_to_array(range)
  range.to_a
end

range = (1..5)
p range_to_array(range)
# Output: [1, 2, 3, 4, 5]

#------------------------------------------------------------------------------
# Problem 2: Write a function that converts a hash to an array of key-value pairs.

def hash_to_array(hash)
  hash.to_a
end

hash = { a: 1, b: 2, c: 3 }
p hash_to_array(hash)
# Output: [[:a, 1], [:b, 2], [:c, 3]]

#------------------------------------------------------------------------------
# Problem 3: Write a function that converts an enumerator to an array.

def enumerator_to_array(enum)
  enum.to_a
end

enum = (1..3).each
p enumerator_to_array(enum)
# Output: [1, 2, 3]



to_h
# What it does: Converts a collection into a hash.
# Why use it: To transform arrays of key-value pairs or other enumerable objects into a hash.

# Syntax:
collection.to_h
# Returns the hash representation of the collection.

#------------------------------------------------------------------------------
# Problem 1: Write a function that converts an array of key-value pairs into a hash.

def array_to_hash(array)
  array.to_h
end

array = [[:a, 1], [:b, 2], [:c, 3]]
p array_to_hash(array)
# Output: { a: 1, b: 2, c: 3 }

#------------------------------------------------------------------------------
# Problem 2: Write a function that converts an array of key-value pairs with duplicates (last one wins).

def array_with_duplicates_to_hash(array)
  array.to_h
end

array = [[:a, 1], [:b, 2], [:a, 3]]
p array_with_duplicates_to_hash(array)
# Output: { a: 3, b: 2 } (last :a pair wins)

#------------------------------------------------------------------------------
# Problem 3: Write a function that converts an enumerator of pairs to a hash.

def enumerator_to_hash(enum)
  enum.to_h
end

enum = [[:x, 10], [:y, 20]].each
p enumerator_to_hash(enum)
# Output: { x: 10, y: 20 }




delete_if
# What it does: Removes elements from a collection (array or hash) if they match a given condition.
# Why use it: To modify a collection by deleting unwanted elements in place.

# Syntax:

# Arrays:
array.delete_if { |element| condition }
# Removes elements that satisfy the condition.

# Hashes:
hash.delete_if { |key, value| condition }
# Removes key-value pairs that satisfy the condition.

#------------------------------------------------------------------------------
# Problem 1: Write a function that remove all even numbers from an array.

def remove_even_numbers!(array)
  array.delete_if { |num| num.even? }
end

nums = [1, 2, 3, 4, 5, 6]
remove_even_numbers!(nums)
p nums
# Output: [1, 3, 5]

#------------------------------------------------------------------------------
# Problem 2: Write a function that remove all words longer than 3 characters from an array.

def remove_long_words!(words)
  words.delete_if { |word| word.length > 3 }
end

words = ["cat", "dog", "elephant", "ant"]
remove_long_words!(words)
p words
# Output: ["cat", "dog", "ant"]

#------------------------------------------------------------------------------
# Problem 3: Write a function that remove key-value pairs where the value is less than 10.

def remove_low_values!(hash)
  hash.delete_if { |key, value| value < 10 }
end

data = { a: 5, b: 15, c: 8, d: 20 }
remove_low_values!(data)
p data
# Output: { b: 15, d: 20 }



each_key
# What it does: Iterates over each key in a hash, allowing you to perform an operation on the keys.
# Why use it: To work with the keys of a hash without worrying about their values.

# Syntax:
hash.each_key { |key| block }
# Yields each key to the block.

#------------------------------------------------------------------------------
# Problem 1: Write a function that prints all keys in a hash.

def print_keys(hash)
  hash.each_key { |key| puts key }
end

data = { name: "Alice", age: 30, city: "New York" }
print_keys(data)
# Output:
# name
# age
# city

#------------------------------------------------------------------------------
# Problem 2: Write a function that collects all keys into an array.

def collect_keys(hash)
  keys = []
  hash.each_key { |key| keys << key }
  keys
end

data = { name: "Alice", age: 30, city: "New York" }
p collect_keys(data)
# Output: [:name, :age, :city]



each_value
# What it does: Iterates over each value in a hash, allowing you to perform an operation on the values.
# Why use it: To work with the values of a hash without worrying about their keys.

# Syntax:
hash.each_value { |value| block }
# Yields each value to the block.

#------------------------------------------------------------------------------
# Problem 1: Write a function that prints all values in a hash.

def print_values(hash)
  hash.each_value { |value| puts value }
end

data = { name: "Alice", age: 30, city: "New York" }
print_values(data)
# Output:
# Alice
# 30
# New York

#------------------------------------------------------------------------------
# Problem 2: Write a function that collect all values into an array.

def collect_values(hash)
  values = []
  hash.each_value { |value| values << value }
  values
end

data = { name: "Alice", age: 30, city: "New York" }
p collect_values(data)
# Output: ["Alice", 30, "New York"]



transform_keys
# What it does: Creates a new hash by applying a block to each key, transforming the keys based on the block's result.
# Why use it: To modify the keys of a hash without changing its values.

# Ruby's transform_keys automatically converts symbol keys to strings for methods like upcase and then converts them back to symbols, ensuring the code doesn't break.

# Syntax:
hash.transform_keys { |key| block }
# Returns a new hash with transformed keys.

# Use `.transform_keys!` to modify the original hash in place.

#------------------------------------------------------------------------------
# Problem 1: Write a function that converts all symbol keys to strings.

def transform_keys_to_strings(hash)
  hash.transform_keys { |key| key.to_s }
end

transform_hash = { one: 1, two: 2 }
p transform_keys_to_strings(transform_hash)
# Output: { "one" => 1, "two" => 2 }


#------------------------------------------------------------------------------
# Problem 2: Write a function that converts all keys to uppercase.

def keys_to_uppercase(hash)
  hash.transform_keys { |key| key.to_s.upcase.to_sym }
end

data = { name: "Alice", age: 30, city: "New York" }
p keys_to_uppercase(data)
# Output: { NAME: "Alice", AGE: 30, CITY: "New York" }


#------------------------------------------------------------------------------
# Problem 3: Write a function that prefixs all keys with "user_".

def prefix_keys(hash, prefix)
  hash.transform_keys { |key| "#{prefix}#{key}".to_sym }
end

data = { name: "Alice", age: 30 }
p prefix_keys(data, "user_")
# Output: { user_name: "Alice", user_age: 30 }


#------------------------------------------------------------------------------
# Problem 4: Write a function that modifies the original hash in place.

def keys_to_symbols_in_place!(hash)
  hash.transform_keys! { |key| key.to_sym }
end

data = { "name" => "Alice", "age" => 30 }
keys_to_symbols_in_place!(data)
p data
# Output: { name: "Alice", age: 30 }



transform_values
# What it does: Creates a new hash by applying a block to each value in the hash, transforming the values based on the block's result.
# Why use it: To modify the values of a hash without changing the keys.

# Syntax:
hash.transform_values { |value| block }
# Returns a new hash with transformed values.

# Use `.transform_values!` to modify the original hash in place.

#------------------------------------------------------------------------------
# Problem 1: Write a function that doubles all values in a hash.

def double_values(hash)
  hash.transform_values { |value| value * 2 }
end

data = { a: 1, b: 2, c: 3 }
p double_values(data)
# Output: { a: 2, b: 4, c: 6 }


#------------------------------------------------------------------------------
# Problem 2: Write a function that converts all values to strings.

def values_to_strings(hash)
  hash.transform_values { |value| value.to_s }
end

data = { a: 1, b: 2, c: 3 }
p values_to_strings(data)
# Output: { a: "1", b: "2", c: "3" }


#------------------------------------------------------------------------------
# Problem 3: Write a function that appends a string to all values.

def append_to_values(hash, suffix)
  hash.transform_values { |value| "#{value}#{suffix}" }
end

data = { name: "Alice", city: "New York" }
p append_to_values(data, "!")
# Output: { name: "Alice!", city: "New York!" }

#------------------------------------------------------------------------------
# Problem 4: Write a function that handles a hash with mixed data types.

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
p modify_mixed_values(data)
# Output: { name: "ALICE", age: 40, city: "NEW YORK" }


#------------------------------------------------------------------------------
# Problem 5: Write a function that modifies the original hash in place.

def double_values_in_place!(hash)
  hash.transform_values! { |value| value * 2 }
end

data = { a: 1, b: 2, c: 3 }
double_values_in_place!(data)
p data
# Output: { a: 2, b: 4, c: 6 }