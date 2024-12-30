#------------------------------------------------------------------------------
# Problem 1: Write a function that returns an array of all keys in a given hash.

def all_keys(hash)

end

fruits = { apple: 1, banana: 2, cherry: 3 }
p all_keys(fruits)
# Output: [:apple, :banana, :cherry]



# # Solution 1
# def all_keys(hash)
#   hash.keys
# end

# fruits = { apple: 1, banana: 2, cherry: 3 }
# p all_keys(fruits)
# # Output: [:apple, :banana, :cherry]


# # Solution 2
# def all_keys(hash)
#   keys_array = []
#   hash.each_key { |k| keys_array << k }
#   keys_array
# end

# fruits = { apple: 1, banana: 2, cherry: 3 }
# p all_keys(fruits)
# # Output: [:apple, :banana, :cherry]


#------------------------------------------------------------------------------
# Problem 2: Write a function that prints the keys in a hash, one per line.

def print_keys(hash)

end

person = { name: "Alice", age: 25, city: "NYC" }
print_keys(person)
# Output (each key on its own line):
# name
# age
# city



# # Solution 1
# def print_keys(hash)
#   hash.keys.each { |key| puts key }
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
p all_values(prices)
# Output: [1.2, 0.5, 2.0]



# # Solution 1
# def all_values(hash)
#   hash.values
# end

# prices = { apple: 1.2, banana: 0.5, cherry: 2.0 }
# p all_values(prices)
# # Output: [1.2, 0.5, 2.0]


# # Solution 2
# def all_values(hash)
#   values_array = []
#   hash.each_value { |v| values_array << v }
#   values_array
# end

# prices = { apple: 1.2, banana: 0.5, cherry: 2.0 }
# p all_values(prices)
# # Output: [1.2, 0.5, 2.0]


#------------------------------------------------------------------------------
# Problem 2: Write a function that prints all values in a hash, one per line.

# Solution 1
def print_values(hash)


end

movie = { title: "Matrix", year: 1999, rating: 8.7 }
print_values(movie)
# Output (each value on its own line):
# Matrix
# 1999
# 8.7



# # Solution 1
# def print_values(hash)
#   hash.each_value do |value|
#     puts value
#   end
# end

# movie = { title: "Matrix", year: 1999, rating: 8.7 }
# print_values(movie)
# # Output (each value on its own line):
# # Matrix
# # 1999
# # 8.7



#------------------------------------------------------------------------------
# Problem 1: Write a function that merges two hashes, returning a new hash without modifying the originals.

def merge_hashes(hash1, hash2)

end

hash_a = { name: "Alice", age: 25 }
hash_b = { city: "NYC", occupation: "Engineer" }
p merge_hashes(hash_a, hash_b)
# Output: { name: "Alice", age: 25, city: "NYC", occupation: "Engineer" }



# # Solution 1
# def merge_hashes(hash1, hash2)
#   hash1.merge(hash2)
# end

# hash_a = { name: "Alice", age: 25 }
# hash_b = { city: "NYC", occupation: "Engineer" }
# p merge_hashes(hash_a, hash_b)
# # Output: { name: "Alice", age: 25, city: "NYC", occupation: "Engineer" }


# # Solution 2
# def merge_hashes(hash1, hash2)
#   result = {}
#   hash1.each { |k, v| result[k] = v }
#   hash2.each { |k, v| result[k] = v }
#   result
# end

# hash_a = { name: "Bob", age: 30 }
# hash_b = { city: "LA", occupation: "Designer" }
# p merge_hashes(hash_a, hash_b)
# # Output: { name: "Bob", age: 30, city: "LA", occupation: "Designer" }


#------------------------------------------------------------------------------
# Problem 2: Write a function that merges two hashes, with values from the second hash overriding duplicates in the first.

def merge_override(hash1, hash2)

end

default_config = { timeout: 30, debug: false }
user_config = { debug: true }
p merge_override(default_config, user_config)
# Output: { timeout: 30, debug: true }



# # Solution
# def merge_override(hash1, hash2)
#   hash1.merge(hash2)
# end

# default_config = { timeout: 30, debug: false }
# user_config = { debug: true }
# p merge_override(default_config, user_config)
# # Output: { timeout: 30, debug: true }



#------------------------------------------------------------------------------
# Problem 1: Write a function that fetches a value from a hash given a key.

def fetch_value(hash, key)

end

person = { name: "Alice", age: 25 }
p fetch_value(person, :name)
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

# Solution
def fetch_with_default(hash, key, default)

end

settings = { theme: "dark" }
p fetch_with_default(settings, :font_size, 14)
# Output: 14



# # Solution
# def fetch_with_default(hash, key, default)
#   hash.fetch(key, default)
# end

# settings = { theme: "dark" }
# p fetch_with_default(settings, :font_size, 14)
# # Output: 14



#------------------------------------------------------------------------------
# Problem 1: Write a function that safely digs for a nested value within a hash.

def safe_dig(hash, *keys)

end
nested_hash = { user: { info: { name: "Bob" } } }
p safe_dig(nested_hash, :user, :info, :name)
# Output: "Bob"



# # Solution
# def safe_dig(hash, *keys)
#   hash.dig(*keys)
# end
# nested_hash = { user: { info: { name: "Bob" } } }
# p safe_dig(nested_hash, :user, :info, :name)
# # Output: "Bob"



#------------------------------------------------------------------------------
# Problem 1: Write a function that returns true if the hash contains the given key.

def contains_key?(hash, key)

end
key_hash = { a: 1, b: 2 }
p contains_key?(key_hash, :b) # Output: true
p contains_key?(key_hash, :c) # Output: false



# # Solution
# def contains_key?(hash, key)
#   hash.has_key?(key)
# end
# key_hash = { a: 1, b: 2 }
# p contains_key?(key_hash, :b) # Output: true
# p contains_key?(key_hash, :c) # Output: false



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in a hash and returns a new hash with inverted keys and values.

def invert_hash(hash)

end
invert_example = { a: 1, b: 2 }
p invert_hash(invert_example)
# Output: { 1 => :a, 2 => :b }



# # Solution
# def invert_hash(hash)
#   hash.invert
# end
# invert_example = { a: 1, b: 2 }
# p invert_hash(invert_example)
# # Output: { 1 => :a, 2 => :b }



#------------------------------------------------------------------------------
# Problem 1: Write a function that selects key-value pairs where the value is greater than 10.

def select_greater_than_ten(hash)

end
select_hash = { apple: 5, banana: 12, cherry: 20 }
p select_greater_than_ten(select_hash)
# Output: { banana: 12, cherry: 20 }



# # Solution
# def select_greater_than_ten(hash)
#   hash.select { |_, value| value > 10 }
# end
# select_hash = { apple: 5, banana: 12, cherry: 20 }
# p select_greater_than_ten(select_hash)
# # Output: { banana: 12, cherry: 20 }



#------------------------------------------------------------------------------
# Problem 1: Write a function that rejects key-value pairs where the value is even.

def reject_even_values(hash)

end
reject_hash = { a: 1, b: 2, c: 3, d: 4 }
p reject_even_values(reject_hash)
# Output: { a: 1, c: 3 }



# # Solution
# def reject_even_values(hash)
#   hash.reject { |_, value| value.even? }
# end
# reject_hash = { a: 1, b: 2, c: 3, d: 4 }
# p reject_even_values(reject_hash)
# # Output: { a: 1, c: 3 }



#------------------------------------------------------------------------------
# Problem 1: Write a function that converts a hash to an array of [key, value] pairs and back to a hash.

# Solution
def hash_to_array_and_back(hash)

end
convert_hash = { x: 1, y: 2 }
p hash_to_array_and_back(convert_hash)
# Output: { x: 1, y: 2 }



# # Solution
# def hash_to_array_and_back(hash)
#   array_form = hash.to_a
#   array_form.to_h
# end
# convert_hash = { x: 1, y: 2 }
# p hash_to_array_and_back(convert_hash)
# # Output: { x: 1, y: 2 }



#------------------------------------------------------------------------------
# Problem 1: Write a function that deletes all pairs where the value is less than 5.

def delete_if_less_than_five(hash)

end
delete_hash = { one: 1, two: 2, five: 5, six: 6 }
p delete_if_less_than_five(delete_hash)
# Output: { five: 5, six: 6 }



# # Solution
# def delete_if_less_than_five(hash)
#   hash.delete_if { |_, value| value < 5 }
# end
# delete_hash = { one: 1, two: 2, five: 5, six: 6 }
# p delete_if_less_than_five(delete_hash)
# # Output: { five: 5, six: 6 }



#------------------------------------------------------------------------------
# Problem 1: Write a function that prints all keys and all values in separate iterations.

def print_keys_and_values(hash)

end
kv_hash = { a: 100, b: 200, c: 300 }
print_keys_and_values(kv_hash)
# Output (printed to console): :a, :b, :c then 100, 200, 300



# # Solution
# def print_keys_and_values(hash)
#   hash.each_key { |key| p key }    # prints each key
#   hash.each_value { |value| p value }  # prints each value
# end
# kv_hash = { a: 100, b: 200, c: 300 }
# print_keys_and_values(kv_hash)
# # Output (printed to console): :a, :b, :c then 100, 200, 300



#------------------------------------------------------------------------------
# Problem 1: Write a function that converts all symbol keys to strings.

def transform_keys_to_strings(hash)

end
transform_hash = { one: 1, two: 2 }
p transform_keys_to_strings(transform_hash)
# Output: { "one" => 1, "two" => 2 }



# # Solution
# def transform_keys_to_strings(hash)
#   hash.transform_keys { |key| key.to_s }
# end
# transform_hash = { one: 1, two: 2 }
# p transform_keys_to_strings(transform_hash)
# # Output: { "one" => 1, "two" => 2 }



#------------------------------------------------------------------------------
# Problem 1: Write a function that doubles each value in the hash.

def double_hash_values(hash)

end
values_hash = { a: 2, b: 4, c: 6 }
p double_hash_values(values_hash)
# Output: { a: 4, b: 8, c: 12 }



# # Solution
# def double_hash_values(hash)
#   hash.transform_values { |value| value * 2 }
# end
# values_hash = { a: 2, b: 4, c: 6 }
# p double_hash_values(values_hash)
# # Output: { a: 4, b: 8, c: 12 }


