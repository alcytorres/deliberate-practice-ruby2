# .keys
# What it does: Retrieves an array of all keys in the hash.
# Why use it: Useful for iterating over keys or understanding a hash’s structure.

# Syntax:
hash.keys


# .values
# What it does: Retrieves an array of all values in the hash.
# Why use it: Helpful for processing or inspecting the data stored under those keys.

# Syntax:
hash.values


# .merge
# What it does: Combines two hashes into one, returning a new hash.
# Why use it: Helpful when you want to unify data from multiple hashes, with the option to override keys.

# Syntax:
hash1.merge(hash2)
# or
hash1.merge(hash2) { |key, old_val, new_val| /* resolve conflict */ }


# .fetch
# What it does: Retrieves the value for a given key, and raises an error or uses a default if the key is not found.
# Why use it: Prevents silent nil returns for missing keys, ensuring more robust code.

# Syntax:
hash.fetch(key)
hash.fetch(key, default_value)
hash.fetch(key) { |missing_key| /* handle missing key */ }


# .dig
# What it does: Safely accesses nested hash values without causing an error if a key is missing.
# Why use it: Simplifies accessing deeply nested data structures by avoiding nil checks or exceptions.

# Syntax:
nested_hash.dig(:level1, :level2, :level3)


# .has_key?
# What it does: Checks if the hash contains a given key (returns true or false).
# Why use it: Quickly verify the presence of a key before accessing or modifying it.

# Syntax:
hash.has_key?(key)


# .invert
# What it does: Swaps each key and value in the hash, returning a new hash.
# Why use it: Invert mappings, such as for lookups by value instead of key.

# Syntax:
hash.invert


# .select
# What it does: Returns a new hash containing only the key-value pairs that meet the condition in the block.
# Why use it: Useful for filtering out specific entries while preserving hash format.

# Syntax:
hash.select do |key, value|
  # condition that returns true or false
end


# .reject
# What it does: Returns a new hash excluding the key-value pairs that meet the condition in the block.
# Why use it: The opposite of .select — remove specific entries instead of keeping them.

# Syntax:
hash.reject do |key, value|
  # condition that returns true or false
end


# .to_a / .to_h
# What it does: Converts a hash to an array (of [key, value] pairs) or an array of pairs to a hash.
# Why use it: Switch easily between array and hash representations for processing.

# Syntax:
hash.to_a
array_of_pairs.to_h


# .delete_if
# What it does: Deletes every key-value pair for which the block condition is true.
# Why use it: Mutates the original hash by removing unwanted entries in place.

# Syntax:
hash.delete_if do |key, value|
  # condition that returns true or false
end


# .each_key / .each_value
# What it does: Iterates through only the keys (.each_key) or only the values (.each_value).
# Why use it: More specific iteration when you don’t need both keys and values together.

# Syntax:
hash.each_key do |key|
  # work with key
end

hash.each_value do |value|
  # work with value
end


# .transform_keys
# What it does: Returns a new hash with the keys transformed by the given block.
# Why use it: Cleanly modify keys (e.g., upcasing, symbolizing) without manual iteration.

# Syntax:
hash.transform_keys do |key|
  # return new_key
end


# .transform_values
# What it does: Returns a new hash with the values transformed by the given block.
# Why use it: Systematically change or clean up hash values.

# Syntax:
hash.transform_values do |value|
  # return new_value
end









# Problem 1: .keys – Retrieves all keys in the hash.
# Write a function that takes in a hash and returns its keys as an array.
def get_keys(hash)
  hash.keys
end
my_hash = { a: 1, b: 2, c: 3 } # Output: [:a, :b, :c]
p get_keys(my_hash)


# Problem 2: .values – Retrieves all values in the hash.
# Write a function that takes in a hash and returns its values as an array.
def get_values(hash)
  hash.values
end
value_hash = { x: 10, y: 20, z: 30 } # Output: [10, 20, 30]
p get_values(value_hash)


# Problem 3: .merge – Combines two hashes into one.
# Write a function that takes in two hashes and returns their merged result.
def merge_hashes(hash1, hash2)
  hash1.merge(hash2)
end
hash_a = { a: 1, b: 2 }
hash_b = { b: 3, c: 4 } # Output: { a: 1, b: 3, c: 4 }
p merge_hashes(hash_a, hash_b)


# Problem 4: .fetch – Retrieves a value by key with optional error handling.
# Write a function that fetches a value from a hash by its key, returning a default if key not found.
def safe_fetch(hash, key, default_value)
  hash.fetch(key, default_value)
end
fetch_hash = { name: "Alice", age: 30 }
p safe_fetch(fetch_hash, :name, "Unknown") # Output: "Alice"
p safe_fetch(fetch_hash, :city, "Unknown") # Output: "Unknown"


# Problem 5: .dig – Accesses nested hash values safely.
# Write a function that safely digs for a nested value within a hash.
def safe_dig(hash, *keys)
  hash.dig(*keys)
end
nested_hash = { user: { info: { name: "Bob" } } } # Output: "Bob"
p safe_dig(nested_hash, :user, :info, :name)


# Problem 6: .has_key? – Checks if a specific key exists in the hash.
# Write a function that returns true if the hash contains the given key.
def contains_key?(hash, key)
  hash.has_key?(key)
end
key_hash = { a: 1, b: 2 }
p contains_key?(key_hash, :b) # Output: true
p contains_key?(key_hash, :c) # Output: false


# Problem 7: .invert – Swaps keys and values in a hash.
# Write a function that takes in a hash and returns a new hash with inverted keys and values.
def invert_hash(hash)
  hash.invert
end
invert_example = { a: 1, b: 2 } # Output: { 1 => :a, 2 => :b }
p invert_hash(invert_example)


# Problem 8: .select – Filters key-value pairs based on a condition.
# Write a function that selects key-value pairs where the value is greater than 10.
def select_greater_than_ten(hash)
  hash.select { |_, value| value > 10 }
end
select_hash = { apple: 5, banana: 12, cherry: 20 } # Output: { banana: 12, cherry: 20 }
p select_greater_than_ten(select_hash)


# Problem 9: .reject – Filters out key-value pairs based on a condition.
# Write a function that rejects key-value pairs where the value is even.
def reject_even_values(hash)
  hash.reject { |_, value| value.even? }
end
reject_hash = { a: 1, b: 2, c: 3, d: 4 } # Output: { a: 1, c: 3 }
p reject_even_values(reject_hash)


# Problem 10: .to_a / .to_h – Converts between arrays and hashes.
# Write a function that converts a hash to an array of [key, value] pairs and back to a hash.
def hash_to_array_and_back(hash)
  array_form = hash.to_a
  array_form.to_h
end
convert_hash = { x: 1, y: 2 } # Output: { x: 1, y: 2 }
p hash_to_array_and_back(convert_hash)


# Problem 11: .delete_if – Deletes key-value pairs based on a condition.
# Write a function that deletes all pairs where the value is less than 5.
def delete_if_less_than_five(hash)
  hash.delete_if { |_, value| value < 5 }
end
delete_hash = { one: 1, two: 2, five: 5, six: 6 } # Output: { five: 5, six: 6 }
p delete_if_less_than_five(delete_hash)


# Problem 12: .each_key / .each_value – Iterates through just keys or values.
# Write a function that prints all keys and all values in separate iterations.
def print_keys_and_values(hash)
  hash.each_key { |key| p key }    # prints each key
  hash.each_value { |value| p value }  # prints each value
end
kv_hash = { a: 100, b: 200, c: 300 } # Output (printed to console): :a, :b, :c then 100, 200, 300
print_keys_and_values(kv_hash)


# Problem 13: .transform_keys – Applies a transformation to all keys.
# Write a function that converts all symbol keys to strings.
def transform_keys_to_strings(hash)
  hash.transform_keys { |key| key.to_s }
end
transform_hash = { one: 1, two: 2 } # Output: { "one" => 1, "two" => 2 }
p transform_keys_to_strings(transform_hash)


# Problem 14: .transform_values – Applies a transformation to all values.
# Write a function that doubles each value in the hash.
def double_hash_values(hash)
  hash.transform_values { |value| value * 2 }
end
values_hash = { a: 2, b: 4, c: 6 } # Output: { a: 4, b: 8, c: 12 }
p double_hash_values(values_hash)
