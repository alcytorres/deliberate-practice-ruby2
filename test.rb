# Problem 1: Write a function that returns true if the hash contains the given key.

def hash_has_key?(hash, key)
  hash.key?(key)
end

data = { name: "Alice", age: 30 }
p hash_has_key?(data, :name)
# Output: true

p hash_has_key?(data, :height)
# Output: false
