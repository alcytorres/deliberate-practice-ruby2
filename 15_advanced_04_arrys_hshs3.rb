# Convert data from one data type into another


# 1. Convert an array of arrays into a hash.
#     For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.



numbers = [[1, 3], [8, 9], [2, 16]]
#         {1 => 3, 8 => 9, 2 => 16}
# numbers_hash =









numbers = [[1, 3], [8, 9], [2, 16]]
numbers_hash = {}
numbers.each do |key, value|
  numbers_hash[key] = value
end

p numbers_hash




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


items = [{ id: 1, color: "blue", price: 32 }, { id: 2, color: "red", price: 12 }]
#        {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}
items_hash = {}
items.each do |item|
  key = item[:id]
  value = item
  items_hash[key] = value
end

p items_hash



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