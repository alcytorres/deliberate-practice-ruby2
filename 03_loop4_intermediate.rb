# 1. Start with an array of numbers and compute the sum of all the numbers.
#    For example, [5, 10, 8, 3] becomes 26.
numbers = [5, 10, 8, 3]
total = 0
index = 0
while index < numbers.length
  total = total + numbers[index]
  index += 1
end
p total

numbers = [5, 10, 8, 3]
total = 0
numbers.each do |number|
  total = total + number
end
p total


# 2. Start with an array of strings and combine them all into a single string.
#    For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".
sports = ["volleyball", "basketball", "badminton"] 
word = ""
i = 0
while i < sports.length
  word = word + sports[i]
  i += 1
end
p word

sports = ["volleyball", "basketball", "badminton"] 
word = ""
sports.each do |sport|
  word = word + sport
end
p word

# 3. Start with an array of hashes and compute the sum of the prices (from the :price key).
#    For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes 105.
items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
total_price = 0
i = 0
while i < items.length
  total_price = total_price + items[i][:price]
  i += 1
end
p total_price

items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
total_price = 0
items.each do |item|
  total_price = total_price + item[:price]
end
p total_price

# 4. Start with an array of numbers and compute the the minimum number.
#    For example, [5, 10, 8, 3, 9] becomes 3.
numbers = [5, 10, 8, 3, 9]
first_value = 5
i = 0
while i < numbers.length
  if numbers[i] < first_value
    min_value = numbers[i]
  end
  i += 1
end 
p min_value

numbers = [5, 10, 8, 3, 9]
first_value = 5
numbers.each do |number|
  if number < first_value
    min_value = number
  end
end
p min_value


# 5. Start with an array of strings and compute the total length of all the strings.
#    For example, ["volleyball", "basketball", "badminton"] becomes 29.
sports =  ["volleyball", "basketball", "badminton"]
string_length = 0
i = 0
while i < sports.length
  string_length = string_length + sports[i].length
  i += 1
end
p string_length

# 6. Start with an array of hashes and find the hash with the lowest price (from the :price key).
#    For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "pencil", price: 1}.
# (REDO)
items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
lowest_price = items[0]
i = 0 
while i < items.length
  if items[i][:price] < lowest_price[:price]
    lowest_price = items[i]
  end
  i += 1
end
p lowest_price


# 7. Start with an array of numbers and compute product of all the numbers.
#    For example, [5, 10, 8, 3] becomes 1200.


# 8. Start with an array of strings and combine them all into a single string, separated by dashes.
#    For example, ["volleyball", "basketball", "badminton"] becomes "-volleyball-basketball-badminton-".


# 9. Start with an array of hashes and find the hash with the shortest name (from the :name key).
#    For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.


# 10. Start with an array of numbers and compute the maximum number.
#     For example, [5, 10, 8, 3] becomes 10.

