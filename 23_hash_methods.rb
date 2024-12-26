# .keys
# What it does: Returns an array of all the keys in a hash.
# Why use it: Quickly iterating over or verifying the existence of specific keys.
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


# Solution 2
def print_keys(hash)
  hash.each_key { |key| puts key }
end

person = { name: "Bob", age: 30, city: "LA" }
print_keys(person)
# Expected Output (each key on its own line):
# name
# age
# city



# .values
# What it does: Returns an array of all the values in a hash.
# Why use it: Accessing the data stored in a hash without needing the keys.
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
  hash.values.each { |value| puts value }
end

movie = { title: "Inception", year: 2010, rating: 8.8 }
print_values(movie)
# Expected Output (each value on its own line):
# Inception
# 2010
# 8.8


# Solution 2
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



# .merge
# What it does: Combines two hashes into a new hash, overwriting duplicates with the second hash’s values.
# Why use it: Ideal for creating a single hash from multiple sources, especially when you want to control which values take precedence.
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


# Solution 2
def merge_override(hash1, hash2)
  result = hash1.dup
  hash2.each { |k, v| result[k] = v }
  result
end

default_config = { timeout: 60, max_retries: 3 }
user_config = { max_retries: 5 }
p merge_override(default_config, user_config)
# Expected Output: { timeout: 60, max_retries: 5 }



# .fetch
# What it does: Retrieves the value for a given key, allowing you to specify a default value or custom error message if the key is not found.
# Why use it: Prevents errors by providing a fallback when a key is missing, ensuring safer hash lookups.
#------------------------------------------------------------------------------
# Problem 1: Write a function that fetches a value from a hash given a key.
# Solution 1
def fetch_value(hash, key)
  hash.fetch(key)
end

person = { name: "Alice", age: 25 }
p fetch_value(person, :name)
# Expected Output: "Alice"


# Solution 2
def fetch_value(hash, key)
  if hash.key?(key)
    hash[key]
  else
    raise KeyError, "Key not found: #{key}"
  end
end

person = { name: "Bob", age: 30 }
p fetch_value(person, :age)
# Expected Output: 30


#------------------------------------------------------------------------------
# Problem 2: Write a function that fetches a value from a hash or returns a default if the key is missing.
# Solution 1
def fetch_with_default(hash, key, default)
  hash.fetch(key, default)
end

settings = { theme: "dark" }
p fetch_with_default(settings, :font_size, 14)
# Expected Output: 14


# Solution 2
def fetch_with_default(hash, key, default)
  hash.key?(key) ? hash[key] : default
end

settings = { theme: "light" }
p fetch_with_default(settings, :theme, "dark")
# Expected Output: "light"
