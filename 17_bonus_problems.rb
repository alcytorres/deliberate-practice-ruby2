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

numbers = [7, 10, 23]
p sum_of_array(numbers) # Output: 40


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



# 6. Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).



# 7. Write a function that takes in an array of numbers and returns the two smallest numbers.



# 8. Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.



# 9. Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.



# 10. Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.



# BONUS PROBLEMS Write a function that accepts a string and returns whether it’s a palindrome.

# Write a function to generate/print/store the first “n” prime numbers.

# Given a tic-tac-toe board (matrix of 3 x 3), write a function that can check to see whether X or O won. -->