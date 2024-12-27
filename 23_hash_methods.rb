keys
# What it does: Returns an array of all the keys in a hash.
# Why use it: Quickly iterating over or verifying the existence of specific keys.

# Syntax:
hash.keys
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns an array of all keys in a given hash.
# Solution 1
def all_keys(hash)
  hash.keys
end

fruits = { apple: 1, banana: 2, cherry: 3 }
p all_keys(fruits)
# Expected Output: [:apple, :banana, :cherry]


# Solution 2
def all_keys(hash)
  keys_array = []
  hash.each_key { |k| keys_array << k }
  keys_array
end

fruits = { apple: 1, banana: 2, cherry: 3 }
p all_keys(fruits)
# Expected Output: [:apple, :banana, :cherry]


#------------------------------------------------------------------------------
# Problem 2: Write a function that prints the keys in a hash, one per line.
# Solution 1
def print_keys(hash)
  hash.keys.each { |key| puts key }
end

person = { name: "Alice", age: 25, city: "NYC" }
print_keys(person)
# Expected Output (each key on its own line):
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
# Expected Output: [1.2, 0.5, 2.0]


# Solution 2
def all_values(hash)
  values_array = []
  hash.each_value { |v| values_array << v }
  values_array
end

prices = { apple: 1.2, banana: 0.5, cherry: 2.0 }
p all_values(prices)
# Expected Output: [1.2, 0.5, 2.0]


#------------------------------------------------------------------------------
# Problem 2: Write a function that prints all values in a hash, one per line.
# Solution 1
def print_values(hash)
  hash.each_value do |value|
    puts value
  end
end

movie = { title: "Matrix", year: 1999, rating: 8.7 }
print_values(movie)
# Expected Output (each value on its own line):
# Matrix
# 1999
# 8.7



merge
# What it does: Combines two hashes into a new hash, overwriting duplicates with the second hash’s values.
# Why use it: Ideal for creating a single hash from multiple sources, especially when you want to control which values take precedence.

# Syntax:
hash1.merge(hash2)
# or
hash1.merge(hash2) { |key, old_val, new_val| /* resolve conflict */ }
#------------------------------------------------------------------------------
# Problem 1: Write a function that merges two hashes, returning a new hash without modifying the originals.
# Solution 1
def merge_hashes(hash1, hash2)
  hash1.merge(hash2)
end

hash_a = { name: "Alice", age: 25 }
hash_b = { city: "NYC", occupation: "Engineer" }
p merge_hashes(hash_a, hash_b)
# Expected Output: { name: "Alice", age: 25, city: "NYC", occupation: "Engineer" }


# Solution 2
def merge_hashes(hash1, hash2)
  result = {}
  hash1.each { |k, v| result[k] = v }
  hash2.each { |k, v| result[k] = v }
  result
end

hash_a = { name: "Bob", age: 30 }
hash_b = { city: "LA", occupation: "Designer" }
p merge_hashes(hash_a, hash_b)
# Expected Output: { name: "Bob", age: 30, city: "LA", occupation: "Designer" }


#------------------------------------------------------------------------------
# Problem 2: Write a function that merges two hashes, with values from the second hash overriding duplicates in the first.
# Solution 1
def merge_override(hash1, hash2)
  hash1.merge(hash2)
end

default_config = { timeout: 30, debug: false }
user_config = { debug: true }
p merge_override(default_config, user_config)
# Expected Output: { timeout: 30, debug: true }



fetch
# What it does: Retrieves the value for a given key, allowing you to specify a default value or custom error message if the key is not found.
# Why use it: Prevents errors by providing a fallback when a key is missing, ensuring safer hash lookups.

# Syntax:
hash.fetch(key)
hash.fetch(key, default_value)
hash.fetch(key) { |missing_key| /* handle missing key */ }
#------------------------------------------------------------------------------
# Problem 1: Write a function that fetches a value from a hash given a key.
# Solution 1
def fetch_value(hash, key)
  hash.fetch(key)
end

person = { name: "Alice", age: 25 }
p fetch_value(person, :name)
# Expected Output: "Alice"


#------------------------------------------------------------------------------
# Problem 2: Write a function that fetches a value from a hash or returns a default if the key is missing.
# Solution 1
def fetch_with_default(hash, key, default)
  hash.fetch(key, default)
end

settings = { theme: "dark" }
p fetch_with_default(settings, :font_size, 14)
# Expected Output: 14



dig
# What it does: Safely accesses nested hash values without causing an error if a key is missing.
# Why use it: Simplifies accessing deeply nested data structures by avoiding nil checks or exceptions.

# Syntax:
nested_hash.dig(:level1, :level2, :level3)
#------------------------------------------------------------------------------
# Problem 1: Write a function that safely digs for a nested value within a hash.
def safe_dig(hash, *keys)
  hash.dig(*keys)
end
nested_hash = { user: { info: { name: "Bob" } } } # Output: "Bob"
p safe_dig(nested_hash, :user, :info, :name)



has_key?
# What it does: Checks if the hash contains a given key (returns true or false).
# Why use it: Quickly verify the presence of a key before accessing or modifying it.

# Syntax:
hash.has_key?(key)
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns true if the hash contains the given key.
def contains_key?(hash, key)
  hash.has_key?(key)
end
key_hash = { a: 1, b: 2 }
p contains_key?(key_hash, :b) # Output: true
p contains_key?(key_hash, :c) # Output: false



invert
# What it does: Swaps each key and value in the hash, returning a new hash.
# Why use it: Invert mappings, such as for lookups by value instead of key.

# Syntax:
hash.invert
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in a hash and returns a new hash with inverted keys and values.
def invert_hash(hash)
  hash.invert
end
invert_example = { a: 1, b: 2 } # Output: { 1 => :a, 2 => :b }
p invert_hash(invert_example)



select
# What it does: Returns a new hash containing only the key-value pairs that meet the condition in the block.
# Why use it: Useful for filtering out specific entries while preserving hash format.

# Syntax:
hash.select do |key, value|
  # condition that returns true or false
end
#------------------------------------------------------------------------------
# Problem 1: Write a function that selects key-value pairs where the value is greater than 10.
def select_greater_than_ten(hash)
  hash.select { |_, value| value > 10 }
end
select_hash = { apple: 5, banana: 12, cherry: 20 } # Output: { banana: 12, cherry: 20 }
p select_greater_than_ten(select_hash)



reject
# What it does: Returns a new hash excluding the key-value pairs that meet the condition in the block.
# Why use it: The opposite of .select — remove specific entries instead of keeping them.

# Syntax:
hash.reject do |key, value|
  # condition that returns true or false
end
#------------------------------------------------------------------------------
# Problem 1: Write a function that rejects key-value pairs where the value is even.
def reject_even_values(hash)
  hash.reject { |_, value| value.even? }
end
reject_hash = { a: 1, b: 2, c: 3, d: 4 } # Output: { a: 1, c: 3 }
p reject_even_values(reject_hash)



.to_a / .to_h
# What it does: Converts a hash to an array (of [key, value] pairs) or an array of pairs to a hash.
# Why use it: Switch easily between array and hash representations for processing.

# Syntax:
hash.to_a
array_of_pairs.to_h
#------------------------------------------------------------------------------
# Problem 1: Write a function that converts a hash to an array of [key, value] pairs and back to a hash.
def hash_to_array_and_back(hash)
  array_form = hash.to_a
  array_form.to_h
end
convert_hash = { x: 1, y: 2 } # Output: { x: 1, y: 2 }
p hash_to_array_and_back(convert_hash)



.delete_if
# What it does: Deletes every key-value pair for which the block condition is true.
# Why use it: Mutates the original hash by removing unwanted entries in place.

# Syntax:
hash.delete_if do |key, value|
  # condition that returns true or false
end
#------------------------------------------------------------------------------
# Problem 1: Write a function that deletes all pairs where the value is less than 5.
def delete_if_less_than_five(hash)
  hash.delete_if { |_, value| value < 5 }
end
delete_hash = { one: 1, two: 2, five: 5, six: 6 } # Output: { five: 5, six: 6 }
p delete_if_less_than_five(delete_hash)



.each_key / .each_value
# What it does: Iterates through only the keys (.each_key) or only the values (.each_value).
# Why use it: More specific iteration when you don’t need both keys and values together.

# Syntax:
hash.each_key do |key|
  # work with key
end

hash.each_value do |value|
  # work with value
end
#------------------------------------------------------------------------------
# Problem 1: Write a function that prints all keys and all values in separate iterations.
def print_keys_and_values(hash)
  hash.each_key { |key| p key }    # prints each key
  hash.each_value { |value| p value }  # prints each value
end
kv_hash = { a: 100, b: 200, c: 300 } # Output (printed to console): :a, :b, :c then 100, 200, 300
print_keys_and_values(kv_hash)




.transform_keys
# What it does: Returns a new hash with the keys transformed by the given block.
# Why use it: Cleanly modify keys (e.g., upcasing, symbolizing) without manual iteration.

# Syntax:
hash.transform_keys do |key|
  # return new_key
end
#------------------------------------------------------------------------------
# Problem 1: Write a function that converts all symbol keys to strings.
def transform_keys_to_strings(hash)
  hash.transform_keys { |key| key.to_s }
end
transform_hash = { one: 1, two: 2 } # Output: { "one" => 1, "two" => 2 }
p transform_keys_to_strings(transform_hash)



.transform_values
# What it does: Returns a new hash with the values transformed by the given block.
# Why use it: Systematically change or clean up hash values.

# Syntax:
hash.transform_values do |value|
  # return new_value
end
#------------------------------------------------------------------------------
# Problem 1: Write a function that doubles each value in the hash.
def double_hash_values(hash)
  hash.transform_values { |value| value * 2 }
end
values_hash = { a: 2, b: 4, c: 6 } # Output: { a: 4, b: 8, c: 12 }
p double_hash_values(values_hash)



