# Reduce an array to a single value based on some computation


# 1. Start with an array of numbers and compute the sum of all the numbers.
#    For example, [5, 10, 8, 3] becomes 26.


# nums =  [5, 10, 8, 3]
# #          26
# total = 0
# i = 0
# while i < nums.length
#   total += nums[i]
#   i += 1
# end
# puts total


# nums = [5, 10, 8, 3]
# #         26
# sum = 0
# nums.each do |number|
#   sum += number
# end
# puts sum


# nums = [5, 10, 8, 3]
# #         26
# total = 0
# nums.each do |number|
#   total = total + number
# end
# puts total


# 2. Start with an array of strings and combine them all into a single string.
#    For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".


# sports = ["volleyball", "basketball", "badminton"]
# #         "volleyballbasketballbadminton"
# combined_string = ""
# i = 0
# while i < sports.length
#   combined_string += sports[i]
#   i += 1
# end
# puts combined_string


# sports = ["volleyball", "basketball", "badminton"]
# #         "volleyballbasketballbadminton"
# combined_string = ""
# sports.each do |sport|
#   combined_string += sport
# end
# puts combined_string


# 3. Start with an array of hashes and compute the sum of the prices (from the :price key).
#    For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes 105.


# items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
# #       105
# total = 0
# i = 0
# while i < items.length
#   total += items[i][:price]
#   i += 1
# end
# puts total


# items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
# #       105
# total = 0
# items.each do |item|
#   total += item[:price]
# end
# puts total


# 4. Start with an array of numbers and compute the the minimum number.
#    For example, [5, 10, 8, 3, 9] becomes 3.


# nums = [5, 10, 8, 3, 9]
# #         3
# min_num = nums[0]
# i = 0
# while i < nums.length
#   if nums[i] < min_num
#     min_num = nums[i]
#   end
#   i += 1
# end
# puts min_num


# numbers = [5, 10, 8, 3, 9]
# #         3
# min_value = numbers[0]
# numbers.each do |number|
#   if number < min_value
#     min_value = number
#   end
# end
# puts min_value



# 5. Start with an array of strings and compute the total length of all the strings.
#    For example, ["volleyball", "basketball", "badminton"] becomes 29.


# sports = ["volleyball", "basketball", "badminton"]
# #        29
# string_length = 0
# i = 0
# while i < sports.length
#   string_length += sports[i].length
#   i += 1
# end
# puts string_length


# sports =  ["volleyball", "basketball", "badminton"]
# #        29
# string_length = 0
# i = 0
# while i < sports.length
#   string_length = string_length + sports[i].length
#   i += 1
# end
# puts string_length


# 6. Start with an array of hashes and find the hash with the lowest price (from the :price key).
#    For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "pencil", price: 1}.
# (REDO)


# items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
# #       {name: "pencil", price: 1}
# cheapest_items = items[0]
# i = 0
# while i < items.length
#   if items[i][:price] < cheapest_items[:price]
#     cheapest_items = items[i]
#   end
#   i += 1
# end
# puts cheapest_items


# items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
# #       {name: "pencil", price: 1}
# lowest_price = items[0]
# items.each do |item|
#   if item[:price] < lowest_price[:price]
#     lowest_price = item
#   end
# end
# puts lowest_price


# 7. Start with an array of numbers and compute product of all the numbers.
#    For example, [5, 10, 8, 3] becomes 1200.

# nums = [5, 10, 8, 3]
# #      1200
# product = 1
# i = 0
# while i < nums.length
#   product *= nums[i]
#   i += 1
# end
# puts product


# nums = [5, 10, 8, 3]
# #         1200
# product = 1
# nums.each do |number|
#   product = product * number
# end
# puts product


#  8. Start with an array of strings and combine them all into a single string, separated by dashes.
#     For example, ["volleyball", "basketball", "badminton"] becomes "-volleyball-basketball-badminton-".

# sports = ["volleyball", "basketball", "badminton"]
# #        "-volleyball-basketball-badminton-"
# string = "-"
# i = 0
# while i < sports.length
#   string += sports[i] + "-"
#   i += 1
# end
# puts string


# sports = ["volleyball", "basketball", "badminton"]
# #        "-volleyball-basketball-badminton-"
# string = "-"
# sports.each do |sport|
#   string << sport + "-"
# end
# puts string


# 9. Start with an array of hashes and find the hash with the shortest name (from the :name key).
#    For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.


# items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
# #       {name: "book", price: 4}
# shortest_name = items[0]
# i = 0
# while i < items.length
#   if items[i][:name].length < shortest_name[:name].length
#     shortest_name = items[i]
#   end
#   i += 1
# end
# puts shortest_name


# items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
# #       {name: "book", price: 4}
# shortest_name = items[0]
# items.each do |item|
#   if item[:name].length < shortest_name[:name].length
#     shortest_name = item
#   end
# end
# puts shortest_name



# 10. Start with an array of numbers and compute the maximum number.
#     For example, [5, 10, 8, 3] becomes 10.


# nums = [5, 10, 8, 3]
# #         10
# max_number = nums[0]
# i = 0
# while i < nums.length
#   if nums[i] > max_number
#     max_number = nums[i]
#   end
#   i += 1
# end
# puts max_number


# numbers = [5, 10, 8, 3]
# max_number = numbers[0]
# numbers.each do |number|
#   if number > max_number
#     max_number = number
#   end
# end
# puts max_number