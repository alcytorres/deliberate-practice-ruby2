#------------------------------------------------------------------------------
# 1. Countning bits

# Given an integer n, write a function that returns an array where the first element is the count of 1 bits in its binary representation, followed by the positions of each 1 bit (starting from 1 for the leftmost bit). How would you implement this in Ruby

# Make sure to only add your code to the "# Write your code here" section

# This question ensures that the expected answer explains:
   # Binary conversion of n
   # Counting the number of 1 bits
   # Tracking positions of 1 bits (1-based index)
   # Returning the expected output format ([count_of_ones, pos1, pos2, ...])


#!/bin/ruby

require 'json'
require 'stringio'

# Complete the 'getOneBits' function below.

# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER n as parameter.

def getOneBits(n)
  # Write your code here
  # Convert to binary (as a string) without leading zeros.
  binary_str = n.to_s(2)

  # Find positions of '1' bits (leftmost is position 1).
  one_bits_positions = []
  binary_str.chars.each_with_index do |bit, idx|
    one_bits_positions << (idx + 1) if bit == '1'
  end

   # Return array: [count_of_ones, pos1, pos2, ...]
  [one_bits_positions.size] + one_bits_positions
end

# Input retrieval, function execution, and writes the formatted output to the specified file.
fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

result = getOneBits n

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()



#------------------------------------------------------------------------------
# 2. Romanizer problem

# Write a function that converts an array of integers into their corresponding Roman numeral representations. The function should return an array where each element is the Roman numeral equivalent of the respective integer in the input array. How would you implement this in Ruby?

# Make sure to only add your code to the "# Write your code here" section

# This question ensures that the expected answer covers:
   # Mapping integer values to Roman numerals in descending order
   # Iterating through each number and converting it using subtraction
   # Returning an array of Roman numeral strings


#!/bin/ruby

require 'json'
require 'stringio'

# Complete the 'romanizer' function below.

# The function is expected to return a STRING_ARRAY.
# The function accepts INTEGER_ARRAY numbers as parameter.

def romanizer(numbers)
  # Write your code here
  # Define our Roman digits and their values in descending order
  roman_map = [
    [1000, 'M'], [900, 'CM'], [500, 'D'], [400, 'CD'],
    [100,  'C'], [90,  'XC'], [50,  'L'], [40,  'XL'],
    [10,   'X'], [9,   'IX'], [5,   'V'], [4,   'IV'],
    [1,    'I']
  ]

  # Convert each integer in `numbers` to its Roman representation
  numbers.map do |num|
    result = ""
    roman_map.each do |value, symbol|
      # Keep subtracting as long as `num` is >= value
      while num >= value
        result << symbol
        num -= value
      end
    end
    result
  end

end


# Reads an integer array from input, converts it to Roman numerals using the romanizer function, and writes the formatted output to a file.
fptr = File.open(ENV['OUTPUT_PATH'], 'w')

numbers_count = gets.strip.to_i

numbers = Array.new(numbers_count)

numbers_count.times do |i|
  numbers_item = gets.strip.to_i
  numbers[i] = numbers_item
end

result = romanizer numbers

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
