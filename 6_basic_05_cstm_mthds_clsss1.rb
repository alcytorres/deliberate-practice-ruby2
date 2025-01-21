# Write a custom method with valid syntax

# 1. Write a method that takes in a number and returns the number times two. Then run the method and print the result.
def get_double(number)
  number * 2
end

num = get_double(10)
p num

# 2. Write a method that takes in a string and returns the string with all capital letters. Then run the method and print the result.
def make_upcase(string)
  string.upcase
end

word = "rocket"
p make_upcase(word)

# 3. Write a method that takes in two numbers and returns the first number subtracted by the second. Then run the method and print the result.
def get_difference(num1, num2)
  num1 - num2
end

test = get_difference(10, 3)
p test

# 4. Write a method that takes in a number and returns the number times itself. Then run the method and print the result.
def square(number)
  number * number
end

num = square(10)
p num

# 5. Write a method that takes in a string and returns the first letter of the string. Then run the method and print the result.
def get_first_letter(string)
  string[0]
end

word = "sky"
p get_first_letter(word)

# 6. Write a method that takes in three strings and returns a string that combines all three strings with spaces in between. Then run the method and print the result.

def string_combiner(s1, s2, s3)
  "#{s1} #{s2} #{s3}"
end

p string_combiner("sky", "fly", "run")



def string_combiner(s1, s2, s3)
  "#{s1} #{s2} #{s3}"
end

words = ["sky", "fly", "run"]
p string_combiner(*words) # Use the splat operator (*) to unpack the array

# 7. Write a method that takes in a number and returns the number as a string. Then run the method and print the result.
def convert_to_string(number)
  number.to_s
end

num = 10
p convert_to_string(num)

# 8. Write a method that takes in a string and returns the string repeated 5 times. Then run the method and print the result.


# 9. Write a method that takes in 3 numbers and returns the average (the sum divided by 3.0). Then run the method and print the result.


# 10. Write a method that takes in a number and returns the number times 10 plus 30. Then run the method and print the result.