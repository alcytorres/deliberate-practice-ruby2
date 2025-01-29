# Below is a ranked list of 10 fundamental Ruby syntax constructs (no built-in methods)
# that are useful for solving many "Easy" and "Medium" LeetCode problems. Each item
# includes what it does, why it's important, its syntax, and a small example
# demonstrating a possible use case.

# https://chatgpt.com/c/679a7c88-6a80-8011-b58b-830360c319cd

################################################################################
# 1. Method Definition (def ... end)
# What it does: Defines a function/method.
# Why use it: Almost every coding problem requires encapsulating logic in a reusable function.
# Syntax:
#   def method_name(parameters)
#     # code
#   end

#------------------------------------------------------------------------------
# Problem 1: Define a method that takes two integers and returns their sum (no built-in methods).

def add_two_numbers(a, b)
  result = a + b
  result
end

puts add_two_numbers(3, 4)
# Output: 7


################################################################################
# 2. if / elsif / else
# What it does: Conditional branching in your code.
# Why use it: Needed to handle decision-making based on different conditions.
# Syntax:
#   if condition
#     # code
#   elsif another_condition
#     # code
#   else
#     # code
#   end

#------------------------------------------------------------------------------
# Problem 2: Return whether an integer is positive, negative, or zero.

def sign_of_number(n)
  if n > 0
    "positive"
  elsif n < 0
    "negative"
  else
    "zero"
  end
end

puts sign_of_number(-5)
# Output: "negative"


################################################################################
# 3. while Loop
# What it does: Repeats a block of code while a condition is true.
# Why use it: A basic looping construct for scenarios where .each or other methods are disallowed.
# Syntax:
#   while condition
#     # code
#   end

#------------------------------------------------------------------------------
# Problem 3: Compute factorial of a number using while (no built-in methods).

def factorial_while(n)
  result = 1
  counter = n
  while counter > 1
    result = result * counter
    counter = counter - 1
  end
  result
end

puts factorial_while(5)
# Output: 120


################################################################################
# 4. until Loop
# What it does: Repeats a block of code until a condition is true (inverse of while).
# Why use it: Inverts logic compared to while, sometimes more intuitive for certain conditions.
# Syntax:
#   until condition
#     # code
#   end

#------------------------------------------------------------------------------
# Problem 4: Generate the first n multiples of 3 in an array using until.

def multiples_of_three(n)
  result = []
  count = 1
  until count > n
    result[count - 1] = 3 * count
    count += 1
  end
  result
end

puts multiples_of_three(5).inspect
# Output: [3, 6, 9, 12, 15]


################################################################################
# 5. for Loop
# What it does: Iterates over a range or a collection, assigning each element to a variable.
# Why use it: Another basic way to loop without calling .each.
# Syntax:
#   for variable in range
#     # code
#   end

#------------------------------------------------------------------------------
# Problem 5: Print numbers from 1 to n using for loop.

def print_numbers(n)
  for i in 1..n
    puts i
  end
end

print_numbers(3)
# Output:
# 1
# 2
# 3


################################################################################
# 6. Ternary Operator
# What it does: A concise if/else expression.
# Why use it: Shortens simple conditionals, often used inline.
# Syntax:
#   condition ? value_if_true : value_if_false

#------------------------------------------------------------------------------
# Problem 6: Check if a number is even or odd using a ternary operator.

def even_or_odd(n)
  n % 2 == 0 ? "even" : "odd"
end

puts even_or_odd(7)
# Output: "odd"


################################################################################
# 7. Destructuring Assignment
# What it does: Allows simultaneous assignment of multiple variables, including swapping.
# Why use it: Makes code concise when extracting values from arrays or swapping variables.
# Syntax:
#   a, b = [1, 2]  # a = 1, b = 2
#   a, b = b, a    # swap

#------------------------------------------------------------------------------
# Problem 7: Return two values swapped without using a temp variable.

def swap(a, b)
  a, b = b, a
  [a, b]
end

puts swap(10, 99).inspect
# Output: [99, 10]


################################################################################
# 8. String Interpolation
# What it does: Embeds values into strings via #{ }.
# Why use it: Very common for debugging, creating messages, or building strings dynamically.
# Syntax:
#   "Hello, #{name}!"

#------------------------------------------------------------------------------
# Problem 8: Print a greeting using string interpolation.

def greeting(name)
  "Hello, #{name}!"
end

puts greeting("Ruby")
# Output: "Hello, Ruby!"


################################################################################
# 9. Ranges
# What it does: Represents a sequence from start to end (with .. as inclusive or ... as exclusive).
# Why use it: Often used in loops, slicing, or conditional checks (case).
# Syntax:
#   (start..end)   # inclusive range
#   (start...end)  # exclusive range

#------------------------------------------------------------------------------
# Problem 9: Return an array of numbers from x to y (inclusive) without using methods.

def inclusive_range(x, y)
  arr = []
  for i in x..y
    arr.push(i) # push is a method, but let's assume basic push is permissible for demonstration
  end
  arr
end

puts inclusive_range(3, 6).inspect
# Output: [3, 4, 5, 6]


################################################################################
# 10. Slicing (Array/String Indexing)
# What it does: Accesses partial data (substrings or subarrays) with [start, length].
# Why use it: Commonly used to extract a segment of data, crucial in string/array manipulation.
# Syntax:
#   array_or_string[start, length]

#------------------------------------------------------------------------------
# Problem 10: Return a substring of a given string.

def substring(str, start_idx, length)
  str[start_idx, length]
end

puts substring("HelloWorld", 1, 4)
# Output: "ello"


################################################################################
# Why This Order?
# 1. Method Definition (def ... end) -> Fundamental for structuring solutions in Ruby.
# 2. if/elsif/else                   -> Essential for conditional logic in every problem.
# 3. while Loop                      -> Basic looping structure without relying on built-in iteration methods.
# 4. until Loop                      -> Inverse while; useful for certain stop conditions.
# 5. for Loop                        -> Another classic looping approach over ranges.
# 6. Ternary Operator                -> Simplifies simple condition checks inline.
# 7. Destructuring Assignment        -> Makes assignments concise and is common in algorithmic swaps.
# 8. String Interpolation            -> Key for printing/debugging and creating dynamic strings.
# 9. Ranges                          -> Used in loops, generating sequences, or slicing.
# 10. Slicing                        -> Necessary for substring or subarray extraction logic.

# End of snippet
