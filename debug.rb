# Imagine we have a method that calculates the sum of two numbers.
def add_numbers(a, b)
  # Simple log statement before the calculation
  puts "DEBUG: add_numbers called with a=#{a}, b=#{b}"

  result = a + b

  # Another log statement after the calculation
  puts "DEBUG: result of add_numbers is #{result}"

  result
end


# Somewhere in our code, something unexpected happens:
sum = add_numbers(10, 5)
# Output on the console would show:
# DEBUG: add_numbers called with a=10, b=5
# DEBUG: result of add_numbers is 15



