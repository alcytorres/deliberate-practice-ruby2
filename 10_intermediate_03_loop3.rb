# Select items from an array into a new array with items that match a certain condition


# 1. Start with an array of numbers and create a new array with only the numbers less than 20.
#    For example, [2, 32, 80, 18, 12, 3] becomes [2, 18, 12, 3].

numbers = [2, 32, 80, 18, 12, 3]
low_numbers = []
numbers.each do |number|
  if number < 20
    low_numbers << number
  end
end
p low_numbers


numbers = [2, 32, 80, 18, 12, 3]
new_numbers = numbers.select { |number| number < 20 }
p new_numbers


numbers = [2, 32, 80, 18, 12, 3]
new_numbers = []
index = 0
while index < numbers.length
  if numbers[index] < 20
    new_numbers << numbers[index]
  end
  index += 1
end
p new_numbers


# 2. Start with an array of strings and create a new array with only the strings that start with the letter "w".
#    For example, ["winner", "winner", "chicken", "dinner"] becomes ["winner", "winner"].

strings = ["winner", "winner", "chicken", "dinner"]
w_strings = []
strings.each do |string|
  if string[0] == "w"
    w_strings << string
  end
end
p w_strings

strings = ["winner", "winner", "chicken", "dinner"]
w_strings = []
i = 0
while i < strings.length
  if strings[i][0] == "w"
    w_strings << strings[i]
  end
  i += 1
end
p w_strings


# 3. Start with an array of hashes and create a new array with only the hashes with prices greater than 5 (from the :price key).
#    For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "chair", price: 100}].

items = [{ name: "chair", price: 100 }, { name: "pencil", price: 1 }, { name: "book", price: 4 }]
expensive_items = []
items.each do |item|
  if item[:price] > 5
    expensive_items << item
  end
end

p expensive_items


# 4. Start with an array of numbers and create a new array with only the even numbers.
#    For example, [2, 4, 5, 1, 8, 9, 7] becomes [2, 4, 8].

numbers = [2, 4, 5, 1, 8, 9, 7]
even_numbers = []
numbers.each do |number|
  if number % 2 == 0
    even_numbers << number
  end
end

p even_numbers


# 5. Start with an array of strings and create a new array with only the strings shorter than 4 letters.
#    For example, ["a", "man", "a", "plan", "a", "canal", "panama"] becomes ["a", "man", "a", "a"].

strings = ["a", "man", "a", "plan", "a", "canal", "panama"]
short_strings = []
strings.each do |string|
  if string.length < 4
    short_strings << string
  end
end
p short_strings



# 6. Start with an array of hashes and create a new array with only the hashes with names shorter than 6 letters (from the :name key).
#    For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "chair", price: 100}, {name: "book", price: 4}].

items =  [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
short_names = []
items.each do |item|
  if item[:name].length < 6
    short_names << item
  end
end

p short_names


# 7. Start with an array of numbers and create a new array with only the numbers less than 10.
#    For example, [8, 23, 0, 44, 1980, 3] becomes [8, 0, 3].

numbers = [8, 23, 0, 44, 1980, 3]
low_numbers = []
numbers.each do |number|
  if number < 10
    low_numbers << number
  end
end

p low_numbers


# 8. Start with an array of strings and create a new array with only the strings that don't start with the letter "b".
#    For example, ["big", "little", "good", "bad"] becomes ["little", "good"].

strings = ["big", "little", "good", "bad"]
new_strings = []
strings.each do |string|
  if string[0] != "b"
    new_strings << string
  end
end
p new_strings


# 9. Start with an array of hashes and create a new array with only the hashes with prices less than 10 (from the :price key).
#    For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "pencil", price: 1}, {name: "book", price: 4}].

items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
cheap_items = []
items.each do |item|
  if item[:price] < 10
    cheap_items << item
  end
end
p cheap_items


# 10. Start with an array of numbers and create a new array with only the odd numbers.
#     For example, [2, 4, 5, 1, 8, 9, 7] becomes [5, 1, 9, 7].

numbers = [2, 4, 5, 1, 8, 9, 7]
odd_numbers = []
numbers.each do |number|
  if number % 2 == 1
    odd_numbers << number
  end
end
p odd_numbers


numbers = [2, 4, 5, 1, 8, 9, 7]
odd_numbers = []
i = 0
while i < numbers.length
  if numbers[i] % 2 == 1
    odd_numbers << numbers[i]
  end
  i += 1
end
p odd_numbers