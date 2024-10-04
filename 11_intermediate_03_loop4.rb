# Reduce an array to a single value based on some computation


# 1. Start with an array of numbers and compute the sum of all the numbers.
#    For example, [5, 10, 8, 3] becomes 26.


numbers = [5, 10, 8, 3]
sum = 0
numbers.each do |number|
  sum += number
end
p sum


numbers = [5, 10, 8, 3]
total = 0
numbers.each do |number|
  total = total + number
end
p total


numbers =  [5, 10, 8, 3, 30]
total = 0
i = 0
while i < numbers.length
  total = total + numbers[i]
  i += 1
end
p total




# 2. Start with an array of strings and combine them all into a single string.
#    For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".


sports = ["volleyball", "basketball", "badminton"]
combined_string = ""
sports.each do |sport|
  combined_string += sport
end
p combined_string


# sports = ["volleyball", "basketball", "badminton"]
# combined_string = ""
# i = 0
# while i < sports.length
#   combined_string = combined_string + sports[i]
#   i += 1
# end
# p combined_string



# 3. Start with an array of hashes and compute the sum of the prices (from the :price key).
#    For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes 105.


items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
total = 0
items.each do |item|
  total += item[:price]
end
p total





# items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
# total = 0
# i = 0
# while i < items.length
#   total = total + items[i][:price]
#   i += 1
# end
# p total



# 4. Start with an array of numbers and compute the the minimum number.
#    For example, [5, 10, 8, 3, 9] becomes 3.

# numbers = [5, 10, 8, 3, 9]
# min_number = numbers[0]
# i = 0
# while i < numbers.length
#   if numbers[i] < min_number
#     min_number = numbers[i]
#   end
#   i += 1
# end
# p min_number


numbers = [5, 10, 8, 3, 9]
min_value = numbers[0]
numbers.each do |number|
  if number < min_value
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
items.each do |item|
  if item[:price] < lowest_price[:price]
    lowest_price = item
  end
end

p lowest_price


# items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
# cheapest_item = items[0]
# index = 0
# while index < items.length
#   item = items[index]
#   if item[:price] < cheapest_item[:price]
#     cheapest_item = item
#   end
#   index += 1
# end

# p cheapest_item




# 7. Start with an array of numbers and compute product of all the numbers.
#    For example, [5, 10, 8, 3] becomes 1200.


numbers = [5, 10, 8, 3]
product = 1
numbers.each do |number|
  product = product * number
end
p product


numbers = [5, 10, 8, 3]
product = 1
i = 0
while i < numbers.length
  product = product * numbers[i]
  i += 1
end
p product



#  8. Start with an array of strings and combine them all into a single string, separated by dashes.
#     For example, ["volleyball", "basketball", "badminton"] becomes "-volleyball-basketball-badminton-".


sports = ["volleyball", "basketball", "badminton"]
string = "-"
sports.each do |sport|
  string << sport + "-"
end
p string


# sports = ["volleyball", "basketball", "badminton"]
# string = "-"
# i = 0
# while i < sports.length
#   string = string + sports[i] + "-"
#   i += 1
# end
# p string


# 9. Start with an array of hashes and find the hash with the shortest name (from the :name key).
#    For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.


items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
item1_name_length = items[0][:name].length
items.each do |item|
  if item[:name].length < item1_name_length
    item1_name_length = item
  end
end
p item1_name_length




items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
hash = {}
item1_name_length = items[0][:name].length
i = 0
while i < items.length
  if items[i][:name].length < item1_name_length
    hash = items[i]
  end
  i += 1
end
p hash



# 10. Start with an array of numbers and compute the maximum number.
#     For example, [5, 10, 8, 3] becomes 10.


numbers = [5, 10, 8, 3]
max_number = numbers[0]
numbers.each do |number|
  if number > max_number
    max_number = number
  end
end
p max_number


# numbers = [5, 10, 8, 3]
# max_number = numbers[0]
# i = 0
# while i < numbers.length
#   if numbers[i] > max_number
#     max_number = numbers[i]
#   end
#   i += 1
# end
# p max_number
