
# Convert data from one data type into another


# 1. Convert an array of arrays into a hash.
#     For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.


numbers = [[1, 3], [8, 9], [2, 16]]
#         {1 => 3, 8 => 9, 2 => 16}
# numbers_hash =

















numbers = [[1, 3], [8, 9], [2, 16]]
#         {1 => 3, 8 => 9, 2 => 16}
numbers_hash = {}
numbers.each do |key, value|
  # Adds a key-value pair to numbers_hash, with the sub-array's first element as the key and the second as the value.
  numbers_hash[key] = value
end
p numbers_hash



# Why numbers_hash[key] = number Works:
# The expression numbers_hash[key] = number directly assigns the number value to the key in numbers_hash.
# This is a straightforward key-value assignment, where key becomes the unique key in numbers_hash and number becomes its corresponding value.


# Why numbers_hash[key] << number Would Not Work:
# The << operator is intended for appending values to an array, but numbers_hash[key] is not an array—it's a hash entry that holds a single value.

# If you used numbers_hash[key] << number, Ruby would raise an error unless numbers_hash[key] was already an array (which it isn't, because it starts as an empty hash). Using << implies you're adding multiple items to a single key, but here you only want each key to hold a single, specific value.


# In short, numbers_hash[key] = number correctly assigns a single value to each key, which is the expected behavior for a hash.



# 2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
#    For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.



items = [{ id: 1, color: "blue", price: 32 }, { id: 2, color: "red", price: 12 }]
#        {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}
# hash =




















items = [{ id: 1, color: "blue", price: 32 }, { id: 2, color: "red", price: 12 }]
#        {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}
hash = {}
items.each do |item|
  id = item[:id]
  hash[id] = item
end
p hash


# items = [{ id: 1, color: "blue", price: 32 }, { id: 2, color: "red", price: 12 }]
# #        {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}
# items_hash = {}
# items.each do |item|
#   key = item[:id]
#   value = item
#   items_hash[key] = value
# end

# p items_hash


items = [{ id: 1, color: "blue", price: 32 }, { id: 2, color: "red", price: 12 }]
#        {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}
hash = {}
items.each do |item|
  id = item[:id]
  color = item[:color]
  price = item[:price]
  hash[id] = {id: id, color: color, price: price}
end
p hash


# Why hash[id] = item Works:
# The expression hash[id] = item assigns item (the entire hash) to the key id in hash.
# This works because each item in the array is already a complete hash, and you simply want to map each :id to its corresponding item.

# Why hash[id] << item Would Cause an Error:
# The << operator is used for appending elements to arrays, not for assigning values in a hash.
# Since hash[id] is meant to hold a single hash, not an array, using << doesn’t apply. You’re not appending item to an existing array; you’re setting id directly to item.

# In summary:
# In Problem 2, hash[id] = item correctly assigns the entire item hash to a key in hash.



# 3. Convert a string into a hash with keys for each letter in the string and values for the number of times the letter appears in the string.
#    For example, "bookkeeper" becomes {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}.
# Look for alternative ways to solve this


word = "bookkeeper"
#      {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}
# letter_frequencies =




















word = "bookkeeper"
letter_frequencies = {}
index = 0
while index < word.length
  letter = word[index]
  if letter_frequencies[letter] == nil
    letter_frequencies[letter] = 0
  end
  letter_frequencies[letter] += 1
  index += 1
end
p letter_frequencies



# 4. Convert a hash into an array of arrays.
#    For example, {"chair" => 100, "book" => 14} becomes [["chair", 100], ["book", 14]].

items = {"chair" => 100, "book" => 14}
#         [["chair", 100], ["book", 14]]
# items_hash =


















items = {"chair" => 100, "book" => 14}
items_hash = []
items.each do |key, value|
  items_hash << [key, value]
end
p items_hash




# 5. Convert a hash into an array of hashes using the keys from each hash as the :id key in each of the array's hashes.
#    For example, {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} becomes [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}].

persons = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}}
#         [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}]
# persons_array =


















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
p persons_array




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
p persons_array


# Why persons_array << person Works:
# persons_array << person appends each person hash (after adding the :id key) to the persons_array.
# Each person is now a complete hash with an :id key, and << simply adds it to the array as a separate element, as expected.

# Why persons_array = person Would Not Work:
# persons_array = person would replace persons_array with a single person each time, overwriting the previous values.
# This means that, in the end, persons_array would just contain the last person rather than an array of all people.

# In summary:
# In Problem 5, persons_array << person correctly appends each person hash to persons_array as a separate element.




# 6. Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
#    For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.


strings = ["do", "or", "do", "not"]
#         {"do" => 2, "or" => 1, "not" => 1}
# strings_hash =



















#GPT breakdown
strings = ["do", "or", "do", "not"]
strings_hash = {}
strings.each do |string|
  if strings_hash[string] == nil
    strings_hash[string] = 0
  end
  strings_hash[string] += 1
end

p strings_hash





# 7. Convert a hash into a flat array containing all the hash’s keys and values.
#    For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].


hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
#      ["a", 1, "b", 2, "c", 3, "d", 4]
# flattened_array =

















hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
flattened_array = []
hash.each do |key, value|
  flattened_array << key
  flattened_array << value
end
p flattened_array





# 8. Combine data from a hash with names and prices and an array of hashes with names, colors, and weights to make a new hash.
#    For example, {"chair" => 75, "book" => 15} and [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] becomes {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}.


# Recently answered correctly

prices = {"chair" => 75, "book" => 15}
items = [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}]
#        {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}
# combined_hash =

















prices = {"chair" => 75, "book" => 15}
items = [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}]
# {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}
combined_hash = {}
items.each do |item|
  name = item[:name]
  color = item[:color]
  weight = item[:weight]
  price = prices[name]
  combined_hash[name] = {price: price, color: color, weight: weight}
end

p combined_hash




# 9. Convert an array of hashes into a hash of arrays, using the author as keys and the titles as values.
#    For example, [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}] becomes {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}.


books = [{ author: "Jeff Smith", title: "Bone" }, { author: "George Orwell", title: "1984" }, { author: "Jeff Smith", title: "RASL" }]
#       {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}
# books_hash =
















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
p books_hash




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




# 10. Given a hash, create a new hash that has the keys and values switched.
#     For example, {"a" => 1, "b" => 2, "c" => 3} becomes {1 => "a", 2 => "b", 3 => "c"}.


original_hash = { "a" => 1, "b" => 2, "c" => 3 }
#               {1 => "a", 2 => "b", 3 => "c"}
# flipped_hash =














original_hash = { "a" => 1, "b" => 2, "c" => 3 }
flipped_hash = {}
original_hash.each do |key, value|
  flipped_hash[value] = key
end

p flipped_hash