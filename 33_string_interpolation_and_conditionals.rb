# A Complete Guide to String Interpolation, String Concatenation, Conditionals, and Comparison Operators in Ruby

# --------------------------------------------------------------------------
String Interpolation
# --------------------------------------------------------------------------

# What it does:
# Embeds variables or expressions inside a string using #{}.

# Why use it:
# To dynamically construct strings in a clean and readable way,
# without needing to manually concatenate strings and variables.

# Syntax:
# "#{expression}" - Embed an expression or variable within double-quoted strings.

# Example(s):
name = "Alice"
age = 25
puts "Hello, my name is #{name} and I am #{age} years old."
# Output: Hello, my name is Alice and I am 25 years old.

# You can also use expressions:
puts "In 5 years, I will be #{age + 5} years old."
# Output: In 5 years, I will be 30 years old.

# --------------------------------------------------------------------------
String Concatenation
# --------------------------------------------------------------------------

# What it does:
# Combines multiple strings into one.

# Why use it:
# To construct strings dynamically, especially when variables or parts of a string are not known beforehand.

# Syntax:
# 1. Using `+` to join strings.
# 2. Using `<<` (shovel operator) to append strings.
# 3. Using `.concat` to modify strings in place.

# Example(s):
greeting = "Hello"
name = "Alice"

# Using `+`
message = greeting + ", " + name + "!"
puts message
# Output: Hello, Alice!

# Using `<<` (shovel operator)
greeting = "Hello"
greeting << ", " << name << "!"
puts greeting
# Output: Hello, Alice!

# Using `.concat`
greeting = "Hello"
greeting.concat(", ").concat(name).concat("!")
puts greeting
# Output: Hello, Alice!

# --------------------------------------------------------------------------
Conditionals
# --------------------------------------------------------------------------

# What it does:
# Executes code based on whether a condition evaluates to true or false.

# Why use it:
# To control program flow by making decisions based on specific conditions.

# Syntax:
# if condition
#   code to execute if condition is true
# elsif another_condition
#   code to execute if the first condition is false and another_condition is true
# else
#   code to execute if no conditions are true
# end

# Example(s):
age = 18

# if-else
if age >= 18
  puts "You are an adult."
else
  puts "You are not an adult."
end
# Output: You are an adult.

# if-elsif-else
grade = "B"
if grade == "A"
  puts "Excellent!"
elsif grade == "B"
  puts "Good job!"
else
  puts "Keep trying!"
end
# Output: Good job!

# unless
age = 16
unless age >= 18
  puts "You are not an adult."
end
# Output: You are not an adult.

# --------------------------------------------------------------------------
Comparison Operators
# --------------------------------------------------------------------------

# What they do:
# Compare values and return true or false.

# Why use them:
# To evaluate conditions for control flow, loops, or general logic.

# Syntax:
# == : Checks if two values are equal.
# != : Checks if two values are not equal.
# <  : Checks if the left value is less than the right value.
# <= : Checks if the left value is less than or equal to the right value.
# >  : Checks if the left value is greater than the right value.
# >= : Checks if the left value is greater than or equal to the right value.

# Example(s):
puts 5 == 5  # true
puts 5 != 3  # true
puts 5 < 10  # true
puts 5 <= 5  # true
puts 10 > 5  # true
puts 10 >= 15 # false

# --------------------------------------------------------------------------
Logical Operators
# --------------------------------------------------------------------------

# What they do:
# Combine multiple conditions and return true or false.

# Why use them:
# To create more complex conditional logic.

# Syntax:
# && : Logical AND - true if both conditions are true.
# || : Logical OR - true if at least one condition is true.
# !  : Logical NOT - negates the condition (true becomes false, and vice versa).

# Example(s):
age = 20
puts age > 18 && age < 30  # true (both conditions are true)
puts age > 18 || age > 30  # true (one condition is true)
puts !(age > 30)           # true (negates false to true)

# --------------------------------------------------------------------------
Looping and Flow Control
# --------------------------------------------------------------------------

# while
# Repeats a block of code while a condition is true.
i = 1
while i <= 3
  puts i
  i += 1
end
# Output: 1 2 3

# case-when
# Cleanly handles multiple conditions for a single variable.
grade = "B"
case grade
when "A"
  puts "Excellent!"
when "B"
  puts "Good job!"
else
  puts "Keep trying!"
end
# Output: Good job!

# then (optional for one-line conditionals)
age = 20
puts "You are an adult." if age >= 18 then puts "You are young." if age < 30
# Output: You are an adult.
#         You are young.


# --------------------------------------------------------------------------
Miscellaneous
# --------------------------------------------------------------------------
_
# Underscore (_) in Ruby
#------------------------------------------------------------------------------
# What it does: Represents an ignored or throwaway variable in loops, block
#            parameters, and multiple assignment.
# Why use it:  Improves readability by indicating unused values and prevents
#              unused variable warnings.

# Syntax:
3.times { |_| puts "Hello" }  # `_` is used for an unused block variable

# Mainly used as a throwaway variable to indicate that a value is intentionally inored.

# --------------------------------------------------------------------------
# Problem 1: Use `_` to ignore an unused variable in a loop.

3.times { |_| puts "Hello" }  # `_` is used for an unused block variable
# It is a convention to show that the variable won't be used in the code.

# --------------------------------------------------------------------------
# Problem 2: Write a function that filters a hash to return only the key-value pairs where the value is greater than 10.

def select_values_greater_than_10(hash)
  hash.select {|_, value| value > 10}
  # `_` is used to ignore the hash key
end

data = { a: 5, b: 15, c: 8, d: 20 }
p select_values_greater_than_10(data)
# Output: { b: 15, d: 20 }


#------------------------------------------------------------------------------
(..) and (...)
# Double Dots (..) and Triple Dots (...)
#------------------------------------------------------------------------------
# Double Dots (..) - Inclusive Range
# Creates a range that includes the last value

# Syntax
puts (1..5).to_a  # Output: [1, 2, 3, 4, 5]


# Triple Dots (...) - Exclusive Range
# Creates a range that excludes the last value

# Syntax
puts (1...5).to_a  # Output: [1, 2, 3, 4]
#------------------------------------------------------------------------------
# Exercises

# Double Dots (..) - Inclusive Range
range_inclusive = (1..5).to_a
puts "Inclusive Range (1..10): #{range_inclusive}"
# Output: [1, 2, 3, 4, 5]

# Triple Dots (...) - Exclusive Range
range_exclusive = (1...5).to_a
puts "Exclusive Range (1...10): #{range_exclusive}"
# Output: [1, 2, 3, 4]

#------------------------------------------------------------------------------
# Looping through numbers using ranges
puts "Looping with inclusive range:"
(1..5).each { |num| print "#{num} " }  # Prints: 1 2 3 4 5
puts

puts "Looping with exclusive range:"
(1...5).each { |num| print "#{num} " }  # Prints: 1 2 3 4
puts

#------------------------------------------------------------------------------
# Using Ranges in Conditions
grade = 85
puts "Passed!" if (70..100).include?(grade)  # Output: Passed!

#------------------------------------------------------------------------------
# Substring Extraction
str = "Hello"
puts "Substring (1..3): #{str[1..3]}"   # Output: "ell"
puts "Substring (1...3): #{str[1...3]}" # Output: "el"



#------------------------------------------------------------------------------
Hash Default Values (Hash.new(0))
#------------------------------------------------------------------------------
# What it does: Prevents nil errors when accessing non-existent keys in a hash.
# Why use it: Useful for counting occurrences in an array or string.

# Syntax:
hash = Hash.new(default_value)
counts = Hash.new(0)

arr = [1, 2, 2, 3, 3, 3]
arr.each { |num| counts[num] += 1 }
puts counts  # Output: {1=>1, 2=>2, 3=>3}
#------------------------------------------------------------------------------
# Problem 1: Count the frequency of elements in an array.

def frequency_count(array)
  counts = Hash.new(0)
  # Creates a new hash with a default value of 0 for missing keys
  array.each { |num| counts[num] += 1 }
  # Loops through each number in the array, increasing the count for each number. If `num` is not yet in `counts`, it starts at 0 (because of Hash.new(0))
end
  counts  # Returns the hash containing the frequency of each number
end

numbers = [1, 2, 3, 3, 3]
p frequency_count(numbers)
# Output: {1=>1, 2=>1, 3=>3}
# Explanation:
# - 1 appears once → {1=>1}
# - 2 appears once → {1=>1, 2=>1}
# - 3 appears three times → {1=>1, 2=>1, 3=>3}

#------------------------------------------------------------------------------
# Problem 1.1: Count the frequency of elements in an array (without using Hash.new(0) this will result in error).
def frequency_count(arr)
  counts = {} # Empty hash, no default value
  arr.each { |num| counts[num] += 1 } # This will cause an error!
  counts
end

numbers = [1, 2, 2, 3, 3, 3]
p frequency_count(numbers)


#------------------------------------------------------------------------------
Splat Operator

What it does:
Used to either expand an array into a list of individual elements or collect multiple arguments into a single array.

Why use it:
Expanding Arrays: It allows you to pass an array to a method that expects a list of arguments.
Collecting Arguments: It lets you define methods that accept a variable number of arguments, gathering them into an array for flexible processing.


#------------------------------------------------------------------------------
# Example 1: Unpacking an array into arguments when calling a method.

# Explanation:
# - 'add' expects three separate arguments.
# - 'numbers' is an array: [1, 2, 3].
# - Using '*' before 'numbers' expands the array into individual arguments.
#   Thus, add(*numbers) becomes add(1, 2, 3).

def add(a, b, c)
  a + b + c  # Sums three numbers
end

numbers = [1, 2, 3]
p add(*numbers)  # The '*' before 'numbers' expands the array into 1, 2, 3 as separate arguments.
# Expected Output: 6


# In other words using the splat operator is like doing the following:
# Example 1: Unpacking an array into arguments when calling a method.
def add(a, b, c)
  a + b + c  # Sums three numbers
end

numbers = [1, 2, 3]
p add(1, 2, 3)
# Expected Output: 6

#------------------------------------------------------------------------------
# Example 2: Collecting extra arguments into an array in a method definition.
#
# In a method definition, Ruby matches arguments to parameters in order.
# Here, the method 'greet' has two parameters:
#   1. 'greeting' — This will receive the first argument passed to the method.
#   2. '*names'  — The splat operator (*) before 'names' tells Ruby:
#                 "Take all remaining arguments (if any) and put them into an array called 'names'."
#
# When we call greet("Hello", "Alice", "Bob", "Carol"):
#   - "Hello" is assigned to 'greeting'.
#   - The rest of the arguments, ["Alice", "Bob", "Carol"], are collected into the array 'names'.
def greet(greeting, *names)
  # 'greeting' now holds "Hello"
  # 'names' is now ["Alice", "Bob", "Carol"]
  names.each do |name|
    # For each name in the array, print a greeting.
    puts "#{greeting}, #{name}!"
  end
end

greet("Hello", "Alice", "Bob", "Carol")
# Expected Output:
# Hello, Alice!
# Hello, Bob!
# Hello, Carol!

#------------------------------------------------------------------------------
# Example 3: Array destructuring to capture remaining elements.
#
# Ruby allows you to assign array elements to multiple variables at once.
# Here we use:
#   - 'first' without a splat to capture the first element.
#   - '*rest' with a splat to capture all remaining elements as an array.
#
# When you write: first, *rest = numbers
# Ruby does the following:
#   1. Assign the first element of 'numbers' to 'first'.
#   2. Gather all remaining elements into an array and assign it to 'rest'.
numbers = [1, 2, 3, 4, 5]
first, *rest = numbers
# Now:
#   first is 1
#   rest is [2, 3, 4, 5]
p first  # Expected Output: 1
p rest   # Expected Output: [2, 3, 4, 5]

# Additional note:
# If you instead did: *first, last = numbers
# Then Ruby would assign:
#   - 'last' the final element (5).
#   - '*first' an array with all the preceding elements ([1, 2, 3, 4]).






