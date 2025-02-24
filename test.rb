
# 161
# 161/2 = 80 reamainder of 1
# 80/2 = 40 reamainder of 0
# 40/2 = 20 reamainder of 0
# 20/2 = 10 reamainder of 0
# 10/2 = 5 remainder of 0
# 5/2 = 2 remainder of 1
# 2/2 = 1  remainder of 0
# 1/2 = 0 reaminder of 1
# 10100001


# 71
# 71/2 = 35 => 1
# 35/2 = 17 =>1
# 17/2 = 8 => 1
# 8/2 = 4 => 0
# 4/2 = 2 => 0
# 2/2 = 1 => 0
# 1/2 = 0 => 1
# 1000111




# Test
# Test
# Test
# Test
# Test




#------------------------------------------------------------------------------
# gets.chomp
# What it does:
# - `gets` takes user input as a string (including the newline character "\n").
# - `chomp` removes the trailing newline from the input.
#
# Why use it: To take user input without an unwanted newline at the end.

# Syntax:
# user_input = gets.chomp # Takes input from the user and removes the newline.

# Example:
# Problem: Ask the user for their name and print a greeting.
puts "What is your name?"
name = gets # Takes user input and removes the newline.
puts "Hello, #{name}!" # Outputs a personalized greeting.

#------------------------------------------------------------------------------
# Example Run:
# (User types "Alice" and presses Enter)
# Output:
# What is your name?
# Alice
# Hello, Alice!