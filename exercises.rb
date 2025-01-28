#------------------------------------------------------------------------------
# 1. Countning bits
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the 'getOneBits' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER n as parameter.
#

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
fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

result = getOneBits n

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()



#------------------------------------------------------------------------------
# 2. Romanizer problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the 'romanizer' function below.
#
# The function is expected to return a STRING_ARRAY.
# The function accepts INTEGER_ARRAY numbers as parameter.
#

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
