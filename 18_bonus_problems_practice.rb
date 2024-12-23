# 1. Write a function that takes in an array of numbers and returns its sum.

def sum_of_array(numbers)
  numbers.sum
end

numbers = [1, 2, 4] # Output: 7
p sum_of_array(numbers)




# def sum_of_array(numbers)
#   numbers.sum
# end

# numbers = [1, 2, 4] # Output: 7
# p sum_of_array(numbers)




# 2. Write a function that takes in an array of strings and returns the smallest string.

def smallest_string(strings)
  strings.min_by { |string| string.length}
end

strings = ["apple", "banana", "kiwi"]
puts smallest_string(strings) # Output: "kiwi"




# def smallest_string(strings)
#   strings.min_by { |string| string.length}
# end

# strings = ["apple", "banana", "kiwi"]
# puts smallest_string(strings) # Output: "kiwi"





# 3.  Write a function that takes in an array of numbers and returns a new array with the numbers in reverse order.

def reverse_array(numbers)
  numbers.reverse
end

numbers = [1, 2, 3, 4]
p reverse_array(numbers) # Output: [4, 3, 2, 1]




# def reverse_array(numbers)
#   numbers.reverse
# end

# numbers = [1, 2, 3, 4]
# p reverse_array(numbers) # Output: [4, 3, 2, 1]



# 4. Write a function that takes in an array of words and returns the number of words that begin with the letter “a”.

def count_words_starting_with_a(words)
  words.count {|word| word[0] == "a"}
end

words = ["apple", "banana", "avocado", "pear", "apricot"]
puts count_words_starting_with_a(words) # Output: 3




# def count_words_starting_with_a(words)
#   words.count { |word| word[0] == "a"}
# end

# words = ["apple", "banana", "avocado", "pear", "apricot"]
# puts count_words_starting_with_a(words) # Output: 3



# 5. Write a function that takes in an array of strings and joins them together to make a single string separated by commas.

def array_of_strings(strings)
  strings.join(", ")
end

strings = ["bat", "cat", "fly", "airplane"]
puts array_of_strings(strings) # Output: "bat, cat, fly, airplane"





# def array_of_strings(strings)
#   strings.join(", ")
# end

# strings = ["bat", "cat", "fly", "airplane"]
# puts array_of_strings(strings) # Output: "bat, cat, fly, airplane"




# 6. Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).

def product_of_array(numbers)
  product = 1
  numbers.each {|num| product *= num}
  return product
end

numbers = [1, 3, 4, 10]
puts product_of_array(numbers) # Output: 120



# def product_of_array(numbers)
#   product = 1
#   numbers.each { |num| product *= num }
#   return product
#   # Return the final value of `product` after the loop.
# end

# numbers = [1, 3, 4, 10]
# puts product_of_array(numbers) # Output: 120




# 7. Write a function that takes in an array of numbers and returns the two smallest numbers.

def two_smallest_numbers(numbers)
  numbers.sort[0, 2]
end

numbers = [5, 1, 8, 3]
p two_smallest_numbers(numbers) # Output: [1, 3]




# def two_smallest_numbers(numbers)
#   numbers.sort[0, 2]
# end

# numbers = [5, 1, 8, 3]
# p two_smallest_numbers(numbers) # Output: [1, 3]




# 8. Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.

def count_zeros(numbers)
  numbers.count(0)
end

numbers = [0, 1, 0, 2, 3, 0]
p count_zeros(numbers)  # Output: 3



# def count_zeros(numbers)
#   numbers.count(0)
# end

# numbers = [0, 1, 0, 2, 3, 0]
# p count_zeros(numbers)  # Output: 3





# 9. Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.

def all_numbers_bigger_than_ten(numbers)
  numbers.all? {|num| num > 10}
end

numbers = [30, 40, 60]
puts all_numbers_bigger_than_ten(numbers) # Output: true



# def all_numbers_bigger_than_ten(numbers)
# numbers.all? {|num| num > 10}
# end

# numbers = [30, 40, 60]
# puts all_numbers_bigger_than_ten(numbers) # Output: true






# 10. Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.

def count_a(words)
  words.join.count("a")
end

words = ["bat", "cat", "hat", "car"]
puts count_a(words) # Output: 4


# def count_a(words)
#   words.join.count("a")
# end

# words = ["bat", "cat", "hat", "car"]
# puts count_a(words) # Output: 4









