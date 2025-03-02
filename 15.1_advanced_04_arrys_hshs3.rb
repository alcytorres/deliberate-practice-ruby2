# Convert data from one data type into another MANUALLY


# 1. Convert an array of arrays into a hash.
#     For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.

nums = [[1, 3], [8, 9], [2, 16]]
#         {1 => 3, 8 => 9, 2 => 16}
nums_hash = {}


# p nums_hash



# Solution
nums = [[1, 3], [8, 9], [2, 16]]
#         {1 => 3, 8 => 9, 2 => 16}
nums_hash = {}

i = 0
while i < nums.length
  key = nums[i][0]
  value = nums[i][1]
  nums_hash[key] = value
  i += 1
end

# p nums_hash



# 2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
#    For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.





# Solution
items = [{ id: 1, color: "blue", price: 32 }, { id: 2, color: "red", price: 12 }]
#        {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}
hash = {}

i = 0
while i < items.length
  item = items[i]
  id = item[:id]
  hash[id] = item
  i += 1
end
# p hash



items = [{ id: 1, color: "blue", price: 32 }, { id: 2, color: "red", price: 12 }]
#        {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}
hash = {}

i = 0
while i < items.length
  item = items[i]
  id = item[:id]
  color = item[:color]
  price = item[:price]
  hash[id] = {id: id, color: color, price: price}
  i += 1
end
# p hash



# 3. Convert a string into a hash with keys for each letter in the string and values for the number of times the letter appears in the string.
#    For example, "bookkeeper" becomes {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}.
# Look for alternative ways to solve this

word = "bookkeeper"
#      {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}
letter_frequencies = {}


# p letter_frequencies




# Solution
word = "bookkeeper"
#      {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}
letter_frequencies = {}
i = 0

while i < word.length
  letter = word[i]
  if letter_frequencies[letter] == nil
    letter_frequencies[letter] = 0
  end
  letter_frequencies[letter] += 1
   i += 1
end
# p letter_frequencies



# 4. Convert a hash into an array of arrays.
#    For example, {"chair" => 100, "book" => 14} becomes [["chair", 100], ["book", 14]].

items = {"chair" => 100, "book" => 14}
#       [["chair", 100], ["book", 14]]
result = []


# p result




# Solution
items = {"chair" => 100, "book" => 14}
#       [["chair", 100], ["book", 14]]
result = []

keys = items.keys
# Get an array of keys from the hash (["chair", "book"]).

i = 0

while i < keys.length
  # Loop through each key in the keys array.
  key = keys[i]
  # Get the key at the current index.
  value = items[key]
  # Retrieve the value from the hash for that key.
  result << [key, value]
  # Append an array containing the key and value to items_hash.
  i += 1
end

# p result



# Solution
items = {"chair" => 100, "book" => 14} # Initial hash
#       [["chair", 100], ["book", 14]]
result = []                            # Empty array to store our result
keys = items.keys                      # Get all keys as an array: ["chair", "book"]
i = 0                                  # Initialize counter

# While loop runs as long as i is less than the number of keys
while i < keys.length
  # Create a small array with [key, value] and add it to result
  result << [keys[i], items[keys[i]]]
  i += 1                               # Increment counter
end

# p result



# REVIEW THIS
# 5. Convert a hash into an array of hashes using the keys from each hash as the :id key in each of the array's hashes.
#    For example, {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} becomes [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}].

persons = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}}
#         [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}]
persons_array = []


# p persons_array





# Solution
persons = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}}
#         [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}]
persons_array = []                       # Initialize an empty array for the result.
keys = persons.keys                      # Get an array of keys from the hash.
i = 0                                    # Start at index 0.

while i < keys.length                    # Loop over each key.
  key = keys[i]                          # Retrieve the current key.
  persons_array << { id: key }.merge(persons[key])
  # Create a new hash merging the :id key with the details for that key.
  i += 1
end

# p persons_array


# Solution
# This directly modifies the original person hash inside the persons hash by adding the :id key to it.
# Outcome = [{name: "Alice", age: 31, id: 321}, {name: "Maria", age: 27, id: 322}]

people = { 321 => { name: "Alice", age: 31 }, 322 => { name: "Maria", age: 27 } }
#         [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}]
persons_array = []
people.each do |key, person|
    # This line adds a new key-value pair :id => key to the person hash.
  person[:id] = key
  persons_array << person
end

# p persons_array


# This results in a new hash being created for each person:
# Outcome = [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}]
# This is the CORRECT ANSWER based on the ouput provided in  the question

persons = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}}
#         [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}]
persons_array = []
persons.each do |key, person|
  id = key
  name = person[:name]
  age = person[:age]
  # This line adds a new hash to the persons_array for each person. The new hash contains:
  persons_array << {id: id, name: name, age: age}
end

# p persons_array



# 6. Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
#    For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.

strings = ["do", "or", "do", "not"]
#         {"do" => 2, "or" => 1, "not" => 1}
result = {}
i = 0


# p result



# Solution
strings = ["do", "or", "do", "not"]
#         {"do" => 2, "or" => 1, "not" => 1}
result = {}
i = 0

while i < strings.length
  word = strings[i]
  if result[word] == nil
    result[word] = 0
  end
  result[word] += 1
  i += 1
end
# p result


# 7. Convert a hash into a flat array containing all the hash’s keys and values.
#    For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].

# Solution
hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
#      ["a", 1, "b", 2, "c", 3, "d", 4]
flattened_array = []
i = 0

# p flattened_array





# Solution
hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
#      ["a", 1, "b", 2, "c", 3, "d", 4]
flattened_array = []
i = 0
keys = hash.keys
# Get an array of the hash’s keys: ["a", "b", "c", "d"].

while i < hash.length
# Start a loop that runs as long as `i` is less than the number of key-value pairs (4).
  key = keys[i]
  # Get the key at position `i` from the `keys` array (e.g., "a" when i=0).
  value = hash[key]
  # Look up the value for that key in the hash (e.g., 1 for "a").
  flattened_array << key
  flattened_array << value
  i += 1
end

# p flattened_array



# 8. Combine data from a hash with names and prices and an array of hashes with names, colors, and weights to make a new hash.
#    For example, {"chair" => 75, "book" => 15} and [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] becomes {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}.

prices = {"chair" => 75, "book" => 15}
items = [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}]
#        {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}
combined_hash = {}
i = 0


# p combined_hash





# Solution
prices = {"chair" => 75, "book" => 15}
items = [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}]
#        {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}
combined_hash = {}
i = 0

while i < items.length
  name = items[i][:name]
  color = items[i][:color]
  weight = items[i][:weight]
  price = prices[name]
  combined_hash[name] = {price: price, color: color, weight: weight}
  i += 1
end

# p combined_hash



# Using LOGS to solve problem of mistakenly using color and weight symbols in the items array instead of index

# prices = {"chair" => 75, "book" => 15}
# items = [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}]
# combined_hash = {}
# keys = prices.keys
# i = 0

# while i < items.length
#   key = keys[i]
#   price = prices[key]
#   puts "Processing key: #{key} with price: #{price}"  # Log the key and price

#   begin
#     # These lines are problematic because 'items' is an array.
#     # We're trying to access items using a symbol instead of an index.
#     color = items[:color]
#     weight = items[:weight]
#     puts "Got color: #{color.inspect} and weight: #{weight.inspect}"  # Log the fetched values
#   rescue Exception => e
#     puts "Error encountered: #{e.message}"  # Log the error message
#   end

#   combined_hash[key] = {price: price, color: color, weight: weight}
#   i += 1
# end

# p combined_hash



# 9. Convert an array of hashes into a hash of arrays, using the author as keys and the titles as values.
#    For example, [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}] becomes {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}.

books = [{ author: "Jeff Smith", title: "Bone" }, { author: "George Orwell", title: "1984" }, { author: "Jeff Smith", title: "RASL" }]
#       {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}
books_hash = {}
i = 0


# p books_hash





# Solution
books = [{ author: "Jeff Smith", title: "Bone" }, { author: "George Orwell", title: "1984" }, { author: "Jeff Smith", title: "RASL" }]
#       {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}
books_hash = {}
i = 0

while i < books.length
  author = books[i][:author]
  title = books[i][:title]
  if books_hash[author] == nil
    books_hash[author] = []
  end
  books_hash[author] << title
  i += 1
end

# p books_hash



# Solution
# books = [{ author: "Jeff Smith", title: "Bone" }, { author: "George Orwell", title: "1984" }, { author: "Jeff Smith", title: "RASL" }]
# books_hash = {}
# index = 0
# while index < books.length
#   book = books[index]
#   author = book[:author]
#   title = book[:title]
#   if books_hash[author] == nil
#     books_hash[author] = []
#   end
#   books_hash[author] << title
#   index += 1
# end
# p books_hash



# Solution
books = [{ author: "Jeff Smith", title: "Bone" }, { author: "George Orwell", title: "1984" }, { author: "Jeff Smith", title: "RASL" }]
#       {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}
books_hash = {}
books.each do |book|
  author = book[:author]
  title = book[:title]
  # Checks if the books_hash already has the author as a key
  # If the author is not yet in the hash (i.e., books_hash[author] == nil), this condition will be true
  if books_hash[author] == nil
    # If the author is not found in the hash, it initializes an empty array for that author as the value in books_hash
    books_hash[author] = []
  # Ends the if block, ensuring the author either has an empty array or an existing array associated with it
  end
  # Appends the current book's title to the array associated with the author.
  books_hash[author] << title
end

# p books_hash




# 10. Given a hash, create a new hash that has the keys and values switched.
#     For example, {"a" => 1, "b" => 2, "c" => 3} becomes {1 => "a", 2 => "b", 3 => "c"}.

original_hash = { "a" => 1, "b" => 2, "c" => 3 }
#               {1 => "a", 2 => "b", 3 => "c"}
flipped_hash = {}
i = 0


# p flipped_hash




# Solution
original_hash = { "a" => 1, "b" => 2, "c" => 3 }
#               {1 => "a", 2 => "b", 3 => "c"}
flipped_hash = {}
keys = original_hash.keys
i = 0

while i < original_hash.length
  key = keys[i]
  value = original_hash[key]
  flipped_hash[value] = key
  i += 1
end

# p flipped_hash





