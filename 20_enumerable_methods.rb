# .each
#------------------------------------------------------------------------------
# Problem 1: Write a function that prints each number of an array.
# Solution 1
def print_elements(numbers)
  numbers.each { |num| puts num }
end

numbers = [1, 2, 3]
print_elements(numbers)
# Expected Output:
# 1
# 2
# 3


# Solution 2
def print_elements(numbers)
  numbers.each do |num|
    p num
  end
end

numbers = [1, 2, 3]
print_elements(numbers)
# Expected Output:
# 1
# 2
# 3


#------------------------------------------------------------------------------
# Problem 2: Write a function that prints each key-value pair in a hash.
# Solution 1
def print_hash(person)
  person.each { |key, value| puts "#{key}: #{value}" }
end

person = { name: "Alice", age: 30 }
print_hash(person)
# Expected Output:
# name: Alice
# age: 30


# Solution 2
def print_hash(person)
  person.each do |key, value|
    p "#{key} => #{value}"
  end
end

person = { name: "Alice", age: 30 }
print_hash(person)
# Expected Output:
# "name => Alice"
# "age => 30"



# .map
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes an array of strings and returns a new array with each string in uppercase.
# Solution 1
def uppercase_all(words)
  words.map { |str| str.upcase }
end

words = ["hello", "world"]
p uppercase_all(words)
# Expected Output: ["HELLO", "WORLD"]


# Solution 2
def uppercase_all(words)
  words.map do |str|
    str.upcase
  end
end

words = ["hello", "world"]
p uppercase_all(words)
# Expected Output: ["HELLO", "WORLD"]


#------------------------------------------------------------------------------
# Problem 2: Write a function that takes an array of numbers and returns a new array where each number is incremented by 1.
# Solution 1
def increment_numbers(numbers)
  numbers.map { |num| num + 1 }
end

numbers = [1, 2, 3]
p increment_numbers(numbers)
# Expected Output: [2, 3, 4]


# Solution 2
def increment_numbers(numbers)
  numbers.map do |num|
    num + 1
  end
end

numbers = [1, 2, 3]
p increment_numbers(numbers)
# Expected Output: [2, 3, 4]



# .select
#------------------------------------------------------------------------------
# Problem 1: Write a function that filters out odd numbers, returning only even numbers.
# Solution 1
def evens_only(numbers)
  numbers.select { |num| num.even? }
end

numbers = [1, 2, 3, 4, 5]
p evens_only(numbers)
# Expected Output: [2, 4]


# Solution 2
def evens_only(numbers)
  numbers.select do |num|
    num % 2 == 0
  end
end

numbers = [1, 2, 3, 4, 5]
p evens_only(numbers)
# Expected Output: [2, 4]


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns words longer than 3 letters.
# Solution 1
def longer_than_three(words)
  words.select { |word| word.length > 3 }
end

words = ["apple", "car", "door"]
p longer_than_three(words)
# Expected Output: ["apple", "door"]


# Solution 2
def longer_than_three(words)
  words.select do |word|
    word.size > 3
  end
end

words = ["apple", "car", "door"]
p longer_than_three(words)
# Expected Output: ["apple", "door"]



# .count
#------------------------------------------------------------------------------
# Problem 1: Write a function that counts how many numbers are greater than 10.
# Solution 1
def count_greater_than_ten(numbers)
  numbers.count { |num| num > 10 }
end

numbers = [5, 12, 13, 8, 20]
p count_greater_than_ten(numbers)
# Expected Output: 3


# Solution 2
def count_greater_than_ten(numbers)
  numbers.count do |num|
    num > 10
  end
end

numbers = [5, 12, 13, 8, 20]
p count_greater_than_ten(numbers)
# Expected Output: 3


#------------------------------------------------------------------------------
# Problem 2: Write a function that counts how many even numbers are in an array.
# Solution 1
def even_count(numbers)
  numbers.count { |num| num.even? }
end

numbers = [1, 2, 3, 4, 5, 6]
p even_count(numbers)
# Expected Output: 3


# Solution 2
def even_count(numbers)
  numbers.count do |num|
    num % 2 == 0
  end
end

numbers = [1, 2, 3, 4, 5, 6]
p even_count(numbers)
# Expected Output: 3



# .reduce or .inject
#------------------------------------------------------------------------------
# Problem 1: Write a function that sums all elements in an array.
# Solution 1
def sum_array(numbers)
  numbers.reduce(0) { |accumulator, num| accumulator + num }
end

numbers = [1, 2, 3, 4]
p sum_array(numbers)
# Expected Output: 10


# Solution 2
def sum_array(numbers)
  numbers.reduce(0) do |accumulator, num|
    accumulator + num
  end
end

numbers = [1, 2, 3, 4]
p sum_array(numbers)
# Expected Output: 10


#------------------------------------------------------------------------------
# Problem 2: Write a function that finds the product of all elements in an array.
# Solution 1
def product_of_array(numbers)
  numbers.reduce(1) { |accumulator, num| accumulator * num }
end

numbers = [2, 3, 4]
p product_of_array(numbers)
# Expected Output: 24


# Solution 2
def product_of_array(numbers)
  numbers.reduce(1) do |accumulator, num|
    accumulator * num
  end
end

numbers = [2, 3, 4]
p product_of_array(numbers)
# Expected Output: 24


#------------------------------------------------------------------------------
# Problem 3: Write a function that returns the total sum of an array of integers.
# Solution 1
def total_sum(numbers)
  numbers.reduce(:+)
end

numbers = [1, 2, 3, 4]
p total_sum(numbers)
# Expected Output: 10


#------------------------------------------------------------------------------
# Problem 4: Write a function that returns the total sum of a range of numbers.
# Solution 1
def sum_range(range)
  range.reduce(:+)
end

p sum_range(1..5)
# Expected Output: 15



# .find
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the first even number in an array.
# Solution 1
def first_even(numbers)
  numbers.find { |num| num.even? }
end

numbers = [1, 3, 5, 6, 7]
p first_even(numbers)
# Expected Output: 6


# Solution 2
def first_even(numbers)
  numbers.find do |num|
    num % 2 == 0
  end
end

numbers = [1, 3, 5, 6, 7]
p first_even(numbers)
# Expected Output: 6


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the first word longer than 4 letters.
# Solution 1
def first_long_word(words)
  words.find { |word| word.length > 4 }
end

words = ["cat", "door", "apple", "hi"]
p first_long_word(words)
# Expected Output: "apple"


# Solution 2
def first_long_word(words)
  words.find do |word|
    word.size > 4
  end
end

words = ["cat", "door", "apple", "hi"]
p first_long_word(words)
# Expected Output: "apple"



# .sum
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the total sum of an array of integers.
# Solution 1
def total_sum(numbers)
  numbers.sum
end

numbers = [1, 2, 3]
p total_sum(numbers)
# Expected Output: 6


# Solution 2
def total_sum(numbers)
  numbers.inject(:+)
end

numbers = [1, 2, 3]
p total_sum(numbers)
# Expected Output: 6


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the total sum of a range of numbers.
# Solution 1
def sum_range(range)
  range.sum
end

p sum_range(1..5)
# Expected Output: 15


# Solution 2
def sum_range(range)
  range.inject(:+)
end

p sum_range(1..5)
# Expected Output: 15
