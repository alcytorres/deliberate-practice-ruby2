# <!-- Work on the following problems in groups of two or three. (Take turns on doing each one.) Be sure to follow the process outlined in the guide! Do each problem the long way, avoid Ruby methods that solve the problem for you (like .sort, .reverse, etc.) After all people agree the solution is correct, one person should execute it and verify that it works!

# 1. Write a function that takes in an array of numbers and returns its sum.

def sum_of_array(numbers)
  sum = 0
  numbers.each do |num|
    sum += num
  end
  # There is an invisble return before the sum in the line below
  return sum
end

numbers = [1, 2, 4] # Output: 7
p sum_of_array(numbers)



# 2. Write a function that takes in an array of strings and returns the smallest string.

def smallest_string(strings)
  smallest = strings[0]
  strings.each do |str|
    if str.length < smallest.length
      smallest = str
    end
  end
  return smallest
end

strings = ["apple", "banana", "kiwi"]
puts smallest_string(strings) # Output: "kiwi"



# 3.  Write a function that takes in an array of numbers and returns a new array with the numbers in reverse order.

def reverse_array(numbers)
  reversed = []
  i = numbers.length - 1
  while i >= 0
    reversed << numbers[i]
    i -= 1
  end
  return reversed
end

numbers = [7, 10, 23, 30]
p reverse_array(numbers) # Output: [30, 23, 10, 7]



# 4. Write a function that takes in an array of words and returns the number of words that begin with the letter “a”.

def count_words_starting_with_a(words)
  count = 0
  words.each do |word|
    if word[0] == "a"
      count += 1
    end
  end
  return count
end

words = ["apple", "banana", "avocado", "pear", "apricot"]
puts count_words_starting_with_a(words) # Output: 3



# 5. Write a function that takes in an array of strings and joins them together to make a single string separated by commas.

def array_of_strings(strings)
  result = ""
  strings.each_with_index do |str, index|
    result += str
    result += ", " unless index == strings.length - 1
  end
  return result
end

strings = ["bat", "cat", "fly", "airplane"]
puts array_of_strings(strings) # Output: "bat, cat, fly, airplane"




# Breakdown
def array_of_strings(strings)
  result = ""
  strings.each_with_index do |str, index|
    result += str
    # Adds ", " to result unless we’re at the last word to avoid a trailing comma.
    result += ", " unless index == strings.length - 1
  end
  # After the loop is done, we return result, which now contains all the words joined with commas.
  return result
end

strings = ["bat", "cat", "fly", "airplane"]
puts array_of_strings(strings) # Output: "bat, cat, fly, airplane"



def array_of_strings(strings)
  result = ""
  index = 0
  while index < strings.length
    result += strings[index]
    result += ", " if index < strings.length
    index += 1
  end
  # After the loop is done, we return result, which now contains all the words joined with commas.
  return result
end

strings = ["bat", "cat", "fly", "airplane"]
puts array_of_strings(strings) # Output: "bat, cat, fly, airplane"



# 6. Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).


def product_of_array(numbers)
  product = 1
  numbers.each do |num|
    product *= num
  end
  return product
end

numbers = [2, 3, 4]
puts product_of_array(numbers) # Output: 24



# def product_of_array(numbers)
#   product = 1
#   numbers.each do |num|
#     product = product * num
#   end
#   return product
# end

# numbers = [2, 3, 4]
# puts product_of_array(numbers) # Output: 24


# 7. Write a function that takes in an array of numbers and returns the two smallest numbers.

# def two_smallest_numbers(numbers)
# end



# numbers = [7, 10, 3, 8, 2]
# p two_smallest_numbers(numbers) # Output: [2, 3]



# 8. Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.

def count_zeros(numbers)
  count = 0
  numbers.each do |num|
    count += 1 if num == 0
  end
  return count
end

numbers = [1, 0, 5, 0, 3, 0]
puts count_zeros(numbers) # Output: 3



# 9. Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.

def all_numbers_bigger_than_ten(numbers)
  index = 0
  while index < numbers.length
    if numbers[index] <= 10
      return false
    end
    index += 1
  end
  return true
end

numbers = [30, 40, 60]
puts all_numbers_bigger_than_ten(numbers) # Output: true



# 10. Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.



# BONUS PROBLEMS Write a function that accepts a string and returns whether it’s a palindrome.

# Write a function to generate/print/store the first “n” prime numbers.

# Given a tic-tac-toe board (matrix of 3 x 3), write a function that can check to see whether X or O won. -->