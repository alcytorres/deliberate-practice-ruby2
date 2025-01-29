Key Terms



Big O Notation
O(1)
Simple operations (e.g., get the first item).
Does not grow with input size.

O(log n)
Binary search or algorithms that halve the data each step.
Grows slowly as input size increases.

O(n)
A single loop through all data (like .select or .each in Ruby).
Grows linearly with input size.

O(n log n)
Sorting algorithms like quicksort or mergesort.

O(n²)
Nested loops (e.g., bubble sort) or checking all pairs of elements.
Grows quickly or exponentially, making it inefficient for large inputs.






Key Terms

Enumerator
# An object that allows you to iterate through a collection (like an array, hash, or range) without immediately executing the iteration. It's useful when you want to customize or control how iteration happens.

# Key Points:
# What it does:

# Wraps a collection and provides methods to iterate over it step by step.
# Why use it:

# When you want to delay or customize iteration.
# To chain multiple operations (e.g., map, select) without immediately executing them.

# Example 1: Creating an Enumerator
enum = [1, 2, 3].each
p enum # Output: #<Enumerator: [1, 2, 3]:each>

# Example 2: Iterating with Enumerator
enum = [1, 2, 3].each
p enum.next # Output: 1 (first element)
p enum.next # Output: 2 (second element)
p enum.next # Output: 3 (third element)

# Example 3: Enumerator with Methods
enum = (1..10).select # Creates an Enumerator (does not execute yet)
p enum.each { |n| n.even? } # Output: [2, 4, 6, 8, 10]

# Example 4: Using Enumerator with a Range
range_enum = (1..5).each
p range_enum.map { |n| n * 2 } # Output: [2, 4, 6, 8, 10]


# Simple Analogy:
# Think of an Enumerator as a paused iteration machine. You can "press play" (execute iteration) when needed, one step at a time or all at once.





Keys as Symbols
data = { :name => "Alice", :age => 30, :city => "New York" }
or
data = { name: "Alice", age: 30, city: "New York" }


Keys as Strings
data = { "name" => "Alice", "age" => 30, "city" => "New York" }



Case
# is a conditional statement that matches the value against multiple conditions.


#------------------------------------------------------------------------------
Ternary Operator (? :)
#------------------------------------------------------------------------------
# What it does: Shorthand for if-else conditions.
# Why use it: Makes conditional statements more concise.

# Syntax:
condition ? value_if_true : value_if_false

#------------------------------------------------------------------------------
# Problem 1: Check if a number is even or odd.

def even_or_odd(num)
  num.even? ? "Even" : "Odd"
end

p even_or_odd(5)  # Output: "Odd"
p even_or_odd(8)  # Output: "Even"
