# Map an array to a new array with some computation performed on each item


# 1. Start with an array of numbers and create a new array with each number times 3.
#    For example, [1, 2, 3] becomes [3, 6, 9].


# nums = [1, 2, 3]
# product = []
# i = 0
# while i < nums.length
#   product << nums[i] * 3
#   i += 1
# end
# pp product

# # each method
# nums = [1, 2, 3]
# product = []
# nums.each do |n|
#   product << n * 3
# end
# pp product

# # .map method
# nums = [1, 2, 3]
# product = []
# nums.map {|n| product << n * 3}
# pp product

# # Alternative solution with the array .map method
# nums = [1, 2, 3]
# product = nums.map { |n| n * 3 }
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


# # each method
# strings = ["hello", "goodbye"]
# strings_caps = []
# strings.each do |string|
#   strings_caps << string.upcase
# end
# p strings_caps


# 3. Start with an array of hashes and create a new array of string values from each hash's :name key.
#    For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}] becomes ["Alice", "Blane"].


# people = [{name: "Alice", age: 27}, {name: "Blane", age: 16}]
# #        ["Alice", "Blane"]
# names = []
# i = 0
# while i < people.length
#   names << people[i][:name]
#   i += 1
# end
# pp names


# # each method
# people = [{name: "Alice", age: 27}, {name: "Blane", age: 16}]
# #        ["Alice", "Blane"]
# names = []
# people.each do |person|
#   names << person[:name]
# end
# pp names


# 4. Start with an array of numbers and create a new array with each number plus 7.
#    For example, [1, 2, 3] becomes [8, 9, 10].


# nums = [1, 2, 3]
# #      [8, 9, 10]
# bigger_nums = []
# i = 0
# while i < nums.length
#   bigger_nums << nums[i] + 7
#   i += 1
# end
# pp bigger_nums


# # each method
# nums = [1, 2, 3]
# #      [8, 9, 10]
# bigger_nums = []
# nums.each do |number|
#   bigger_nums << number + 7
# end
# pp bigger_nums


# 5. Start with an array of strings and create a new array with each string's length.
#    For example, ["hello", "goodbye"] becomes [5, 7].


# words = ["hello", "goodbye"]
# #        [5, 7]
# lengths = []
# i = 0
# while i < words.length
#   lengths << words[i].length
#   i += 1
# end
# pp lengths


# # each method
# words = ["hello", "goodbye"]
# #        [5, 7]
# lengths = []
# words.each do |word|
#   lengths << word.length
# end
# p lengths


# 6. Start with an array of hashes and create a new array of number values from each hash's :age key.
#    For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}] becomes [27, 16].


# persons = [{ name: "Alice", age: 27 }, { name: "Blane", age: 16 }]
# #         [27, 16]
# ages = []
# i = 0
# while i < persons.length
#   ages << persons[i][:age]
#   i += 1
# end
# pp ages


# # each method
# persons = [{ name: "Alice", age: 27 }, { name: "Blane", age: 16 }]
# #         [27, 16]
# ages = []
# persons.each do |person|
#   ages << person[:age]
# end
# pp ages


# 7. Start with an array of numbers and create a new array with each number divided by 2.
#    For example, [1, 2, 3] becomes [0.5, 1.0, 1.5].


# prices = [1, 2, 3]
# #        [0.5, 1.0, 1.5]
# sale_prices = []
# i = 0
# while i < prices.length
#   sale_prices << prices[i].to_f / 2
#   i += 1
# end
# pp sale_prices


# # each method
# prices = [1, 2, 3]
# #        [0.5, 1.0, 1.5]
# sale_prices = []
# prices.each do |price|
#   sale_prices << price.to_f / 2
# end
# p sale_prices



# 8. Start with an array of strings and create a new array with each string's first letter only.
#    For example, ["hello", "goodbye"] becomes ["h", "g"].


# words = ["hello", "goodbye"]
# #       ["h", "g"]
# first_letters = []
# i = 0
# while i < words.length
#   first_letters << words[i][0]
#   i += 1
# end
# pp first_letters


# # each method
# words = ["hello", "goodbye"]
# #       ["h", "g"]
# first_letters = []
# words.each do |word|
#   first_letters << word[0]
# end
# pp first_letters


# 9. Start with an array of hashes and create a new array of number values from each hash's :age key times 2.
#    For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}] becomes [54, 32].


# persons = [{name: "Alice", age: 27}, {name: "Blane", age: 16}]
# #         [54, 32]
# age_hash = []
# i = 0
# while i < persons.length
#   age_hash << persons[i][:age] * 2
#   i += 1
# end
# pp age_hash


# # each method
# persons = [{name: "Alice", age: 27}, {name: "Blane", age: 16}]
# #         [54, 32]
# age_hash = []
# persons.each do |person|
#   age_hash << person[:age] * 2
# end
# pp age_hash


# 10. Start with an array of numbers and create a new array with each number converted into a string.
#     For example, [1, 2, 3] becomes ["1", "2", "3"].


# numbers = [1, 2, 3]
# #         ["1", "2", "3"]
# string_numbers = []
# i = 0
# while i < numbers.length
#   string_numbers << numbers[i].to_s
#   i += 1
# end
# pp string_numbers


# # each method
# # numbers = [1, 2, 3]
# # #         ["1", "2", "3"]
# # strings = []
# # numbers.each do |number|
# #   strings << number.to_s
# # end
# # pp strings