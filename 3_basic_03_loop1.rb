# Write a loop which modifies a variable each time the loop runs

# 1. Write a while loop to print the numbers 1 through 10.



# # Solution
# num = 1
# while num <= 10
#   puts num
#   num += 1
# end

# # Solution
# (1..10).each {|num| puts num}

# # Solution
# (1..10).each do |num|  # Iterate over the range from 1 to 10.
#   puts num            # Print each number.
# end

# # Solution
# def counter(num)            # Define a method 'counter' that takes one argument, 'num'
#   numbers = []              # Initialize an empty array 'numbers' to store the sequence of numbers

#   while num <= 10           # Start a loop that continues as long as 'num' is less than or equal to 10
#     numbers << num          # Append the current value of 'num' to the 'numbers' array
#     num += 1                # Increment 'num' by 1 for the next iteration
#   end                       # End of the while loop

#   numbers                   # Return the array of numbers after the loop finishes
# end                         # End of the 'counter' method definition

# number = 7                  # Assign the value 7 to the variable 'number'
# p counter(number)           # Call the 'counter' method with 'number' as argument and print the returned array



# 2. Write a while loop that prints the word "hello" 5 times.


# # Solution
# index = 1
# while index <= 5
#   puts "hello"
#   index += 1
# end

# # Solution
# (0..5).each do |num|
#   if num < 5
#     puts "hello"
#   end
# end


# # 3. Write a while loop that asks the user to enter a word and will run forever until the user enters the word "stop".
# #    REVIEW



# # Solution
while true                  # Start an infinite loop
  puts "enter a word"       # Prompt the user to enter a word
  user_input = gets.chomp   # Read input from the user and remove the trailing newline
  if user_input == "stop"   # Check if the input is "stop"
    break                   # Exit the loop if the condition is met
  end
end


# 4. Write a while loop that prints the numbers 0 through 100, increasing by 5 each time.



# Solution
# number = 0
# while number <= 100
#   puts number
#   number += 5
# end


# 5. Write a while loop that prints the number 9000 ten times.


# Solution
# index = 0
# while index < 10
#   puts 9000
#   index += 1
# end


# 6. Write a while loop that asks the user to enter a number and will run forever until the user enters a number greater than 10.



# Solution
while true                 # Begin an infinite loop
  puts "Enter a number: "  # Prompt the user to enter a number
  input = gets.chomp       # Read user input and remove the newline character
  if input.to_i > 10       # Convert the input to an integer and check if it's greater than 10
    break                  # Exit the loop if the condition is met
  end
end


# The .to_i method is required because gets returns a string. Converting the string to an integer with .to_i allows you to perform a numeric comparison (i.e., check if the number is greater than 10).


# 7. Write a while loop that prints the numbers 50 to 70.


# number = 50
# while number <= 70
#   p number
#   number += 1
# end


# 8. Write a while loop that prints the phrase "Around the world" 144 times.
# index = 1
# while index <= 144
#   puts "Around the world"
#   index += 1
# end


# 9. Write a while loop that asks the user to enter a word and will run forever until the user enters a word with more than 5 letters.


# while true
#   puts "Enter a word"
#   input = gets.chomp
#   if input.length > 5
#     break
#   end
# end


# 10. Write a while loop that prints the even numbers from 2 to 40.


# number = 2
# while number <= 40
#   puts number
#   number += 2
# end



