
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




# Problem 2: Write a function that multiplies each element in an array by its index.

def multiply_by_index(array)
  array.map.with_index { |element, index| element * index }
end

nums = [2, 3, 4]
p multiply_by_index(nums)
# Output: [0, 3, 8]

# Problem 2: Write a function that multiplies each element in an array by its index.

def multiply_by_index(array)
  array.each_with_index { |element, index| element * index }
end

nums = [2, 3, 4]
p multiply_by_index(nums)
# Output: [0, 3, 8]
