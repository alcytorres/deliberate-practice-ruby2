# A Complete Guide to String Interpolation, String Concatenation, Conditionals, and Comparison Operators in Ruby

# --------------------------------------------------------------------------
# String Interpolation
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
# String Concatenation
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
# Conditionals
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
# Comparison Operators
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
# Logical Operators
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
# Looping and Flow Control
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
