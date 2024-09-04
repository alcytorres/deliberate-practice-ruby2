# Map an array to a new array with some computation performed on each item


# 1. Start with an array of numbers and create a new array with each number times 3.
#    For example, [1, 2, 3] becomes [3, 6, 9].

numbers = [1, 2, 3]
product = []
numbers.each do |number|
  product << number * 3
end
p product


# numbers = [1, 2, 3]
# product = []
# index = 0
# while index < numbers.length
#   product << numbers[index] * 3
#   index +=1
# end
# p product


# numbers = [1, 2, 3]
# product = numbers.map { |number| number * 3 }
# p product


# 2. Start with an array of strings and create a new array with each string upcased.
#    For example, ["hello", "goodbye"] becomes ["HELLO", "GOODBYE"].

# strings = ["hello", "goodbye"]
# strings_caps = []
# i = 0
# while i < strings.length
#   strings_caps << strings[i].upcase
#   i += 1
# end
# p strings_caps


strings = ["hello", "goodbye"]
strings_caps = []
strings.each do |string|
  strings_caps << string.upcase
end
p strings_caps


# 3. Start with an array of hashes and create a new array of string values from each hash's :name key.
#    For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}] becomes ["Alice", "Blane"].

persons = [{name: "Alice", age: 27}, {name: "Blane", age: 16}]
names = []
persons.each do |person|
  names << person[:name]
end
p names

# people = [{name: "Alice", age: 27}, {name: "Blane", age: 16}]
# names = []
# i = 0
# while i < people.length
#   names << people[i][:name]
#   i += 1
# end
# p names


# 4. Start with an array of numbers and create a new array with each number plus 7.
#    For example, [1, 2, 3] becomes [8, 9, 10].

numbers = [1, 2, 3]
bigger_numbers = []
numbers.each do |number|
  bigger_numbers << number + 7
end
p bigger_numbers


# 5. Start with an array of strings and create a new array with each string's length.
#    For example, ["hello", "goodbye"] becomes [5, 7].

words = ["hello", "goodbye"]
lengths = []
words.each do |word|
  lengths << word.length
end
p lengths


# 6. Start with an array of hashes and create a new array of number values from each hash's :age key.
#    For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}] becomes [27, 16].

persons = [{ name: "Alice", age: 27 }, { name: "Blane", age: 16 }]
ages = []
persons.each do |person|
  ages << person[:age]
end
p ages


# 7. Start with an array of numbers and create a new array with each number divided by 2.
#    For example, [1, 2, 3] becomes [0.5, 1.0, 1.5].

prices = [1, 2, 3]
sale_prices = []
prices.each do |price|
  sale_prices << price.to_f / 2
end
p sale_prices



# 8. Start with an array of strings and create a new array with each string's first letter only.
#    For example, ["hello", "goodbye"] becomes ["h", "g"].

words = ["hello", "goodbye"]
first_letters = []
words.each do |word|
  first_letters << word[0]
end

p first_letters


# 9. Start with an array of hashes and create a new array of number values from each hash's :age key times 2.
#    For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}] becomes [54, 32].

persons = [{name: "Alice", age: 27}, {name: "Blane", age: 16}]
age_hash = []
persons.each do |person|
  age_hash << person[:age] * 2
end

p age_hash



# 10. Start with an array of numbers and create a new array with each number converted into a string.
#     For example, [1, 2, 3] becomes ["1", "2", "3"].

numbers = [1, 2, 3]
strings = []
numbers.each do |number|
  strings << number.to_s
end

p strings


numbers = [1, 2, 3]
string_numbers = []
i = 0
while i < numbers.length
  string_numbers << numbers[i].to_s
  i += 1
end
p string_numbers
