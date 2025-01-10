ar = [1, 2, 3]

def simple_array_sum(ar)
  sum = 0
  ar.each do |number|
    sum += number
  end
  return sum
end

puts simple_array_sum(ar)



# Task
# The provided code stub reads two integers from STDIN,  and . Add code to print three lines where:

# The first line contains the sum of the two numbers.
# The second line contains the difference of the two numbers (first - second).
# The third line contains the product of the two numbers.


a = 10
b = 7
def arithmetic(a, b)
  sum = a + b
  difference = a - ba
  prodcut = a * b
end


fruits = ["apple", "pear", "bananna", "orange", "grape"]

fruits.each do |fruit|
  p fruit
end



#–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

# Example 1:

# Input: nums = [1,2,3,1]
# Output: true
# Example 2:

# Input: nums = [1,2,3,4]
# Output: false
# Example 3:

# Input: nums = [1,1,1,3,3,4,3,2,4,2]
# Output: true


# Decomposition
# # need to iterate through each number --> .each do ||
# need to use an conditional to check for duplicates
#

nums = [1,2,3,1]
def contains_duplicates(nums)
  nums.each do |num|
    nums.include?(num)
  end
end


#–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# You are climbing a staircase. It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

# Example 1:

# Input: n = 2
# Output: 2
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps
# Example 2:

# Input: n = 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step

# Decomposition
# 0 steps = 1 way = do nothing
# 1 step = 1 way = 1 step
# To reach step 'n' you could have come from 'n-1' or 'n-2'
# Therefore the number of way to reach step 'n' is the sum pf the number of way to reach 'n-1' and 'n-2'
# Relation: ways(n)=ways(n−1)+ways(n−2)

# For 'n = 2'
# ways(2) = ways(1) + ways(0)
# ways(2) = 1 + 1 = 2



# class Solution {
# public:
#     int climbStairs(int n) {

#     }
# };



# Test the .each do method on an array
prices = {"chair" => 75, "book" => 15}
test = []
prices.each do |price|
  test << price
end
p test
# output: [["chair", 75], ["book", 15]]

prices = {"chair" => 75, "book" => 15}
test = []
prices.each do |key, value|
  test << key
  test << value
end
p test
# output: ["chair", 75, "book", 15]




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


def contains_number?(str)
  str.match(/\s/)
end

p contains_number?("hello")
# Output: nil (no match)
p contains_number?("hello123")
# Output: #<MatchData "1"> (match found)

string = "hello\tworld\nfrom ruby"
p string


def spaces_to_hyphens(str)
  str.gsub(/\s/, "-")
end

string = "hello world from ruby"
p spaces_to_hyphens(string)
# Output: "hello-world-from-ruby"




def spaces_to_hyphens(string)
  string
end

string = "hello\tworld\nfrom ruby"
p spaces_to_hyphens(string)


def spaces_to_hyphens(string)
  string.gsub(/\s/, '-') # Replace whitespace with hyphens
end

string = "hello\tworld\nfrom ruby"
result = spaces_to_hyphens(string)
p result.inspect

string = "hello\tworld\nfrom ruby"
puts string



# Problem 3.1:
def print(string)
  return string
end

string = "hello\tworld\nfrom ruby"
puts string