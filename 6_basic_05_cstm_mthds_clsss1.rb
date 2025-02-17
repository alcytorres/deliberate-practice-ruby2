# Write a custom method with valid syntax

# 1. Write a method that takes in a number and returns the number times two. Then run the method and print the result.


# def get_double(num)
#   num * 2
# end

# number = get_double(10)
# puts number

# puts get_double(10)


# 2. Write a method that takes in a string and returns the string with all capital letters. Then run the method and print the result.


# def make_upcase(string)
#   string.upcase
# end

# word = make_upcase("fly")
# puts word



# 3. Write a method that takes in two numbers and returns the first number subtracted by the second. Then run the method and print the result.


# def get_difference(num1, num2)
#   num1 - num2
# end

# numbers = get_difference(10, 5)
# puts numbers


# 4. Write a method that takes in a number and returns the number times itself. Then run the method and print the result.


# def square(num)
#   num * num
# end

# number = square(10)
# puts number


# 5. Write a method that takes in a string and returns the first letter of the string. Then run the method and print the result.


# def get_first_letter(string)
#   string[0]
# end

# word = get_first_letter("fly")
# puts word


# 6. Write a method that takes in three strings and returns a string that combines all three strings with spaces in between. Then run the method and print the result.


# def string_combiner(s1, s2, s3)
#   "#{s1} #{s2} #{s3}"
# end

# input = string_combiner("a", "b", "c")
# puts input


# def string_combiner(s1, s2, s3)
#   "#{s1} #{s2} #{s3}"
# end

# input = ["a", "b", "c"]
# puts string_combiner(*input)
# Uses the splat operator (*) to "unpack" the 'input' array so that
# each element is passed as an individual argument to 'string_combiner'.
# This effectively calls string_combiner("a", "b", "c").
# The result ("a b c") is then printed to the console.


# def string_combiner(s1, s2, s3)
#   s1 + " " + s2 + " " + s3
# end

# input = string_combiner("a", "b", "c")
# puts input


# 7. Write a method that takes in a number and returns the number as a string. Then run the method and print the result.


# def convert_to_string(num)
#   num.to_s
# end

# number = convert_to_string(10)
# puts number


# 8. Write a method that takes in a string and returns the string repeated 5 times. Then run the method and print the result.


# def repeat_strings(strings)
#   "#{strings} " * 5
# end

# result = repeat_strings("sky")
# puts result


# 9. Write a method that takes in 3 numbers and returns the average (the sum divided by 3.0). Then run the method and print the result.


# def average(num1, num2, num3)
#   (num1 + num2 + num3) / 3.0
# end

# numbers = average(5, 10, 15)
# puts numbers


# 10. Write a method that takes in a number and returns the number times 10 plus 30. Then run the method and print the result.


# def convert_number(num)
#   num * 10 + 30
# end

# number = convert_number(10)
# puts number

