#------------------------------------------------------------------------------
# Problem 1: Write a function that adds a single element to an array.

def add_element(array, element)
  array.push(element)
end

numbers = [1, 2, 3]
p add_element(numbers, 4)
# Output: [1, 2, 3, 4



# # Solution 1
# def add_element(array, element)
#   array.push(element)
# end

# numbers = [1, 2, 3]
# p add_element(numbers, 4)
# # Output: [1, 2, 3, 4]


# # Solution 2
# def add_element(array, element)
#   array << element
# end

# numbers = [1, 2, 3]
# p add_element(numbers, 4)
# # Output: [1, 2, 3, 4]


#------------------------------------------------------------------------------
# Problem 2: Write a function that adds all elements of one array to another array.

def merge_arrays(arr1, arr2)
  arr2.each {|elem| arr1.push(elem)}
  return arr1
end

nums1 = [1, 2]
nums2 = [3, 4]
p merge_arrays(nums1, nums2)
# Output: [1, 2, 3, 4]



# # Solution 1
# def merge_arrays(arr1, arr2)
#   arr2.each { |elem| arr1.push(elem) }
#   arr1
# end

# nums1 = [1, 2]
# nums2 = [3, 4]
# p merge_arrays(nums1, nums2)
# # Output: [1, 2, 3, 4]


# # Solution 2
# def merge_arrays(arr1, arr2)
#   arr2.each do |elem|
#     arr1 << elem
#   end
#   arr1
# end

# nums1 = [1, 2]
# nums2 = [3, 4]
# p merge_arrays(nums1, nums2)
# # Output: [1, 2, 3, 4]



#------------------------------------------------------------------------------
# Problem 1: Write a function that removes the last element from an array and returns it.

def remove_last(arr)
  arr.pop
end

numbers = [1, 2, 3]
p remove_last(numbers)
# Output: 3
p numbers
# Output: [1, 2]



# # Solution
# def remove_last(array)
#   array.pop
# end

# numbers = [1, 2, 3]
# p remove_last(numbers)
# # Output: 3
# p numbers
# # Output: [1, 2]


#------------------------------------------------------------------------------
# Problem 2: Write a function that removes the last 4 elements from an array and returns it.

def remove_last(arr)
  arr.pop(4)
end

numbers = [1, 2, 3, 4, 5]
p remove_last(numbers)
# Output: [2, 3, 4, 5]
p numbers
# Output: [1]


# # Solution
# def remove_last(array)
#   array.pop(4)
# end

# numbers = [1, 2, 3, 4, 5]
# p remove_last(numbers)
# # Output: [2, 3, 4, 5]
# p numbers
# # Output: [1]


#------------------------------------------------------------------------------
# Problem 3: Write a function that repeatedly pops elements from an array until it's empty, returning them in a new array.

def pop_all(array)
  popped = []
  popped << array.pop while array.any?
  popped
end

nums = [5, 6, 7]
p pop_all(nums)
# Output: [7, 6, 5]



# # Solution
# def pop_all(array)
#   popped = []
#   popped << array.pop while array.any?
#   popped
# end

# nums = [5, 6, 7]
# p pop_all(nums)
# # Output: [7, 6, 5]



#------------------------------------------------------------------------------
# Problem 1: Write a function that converts an array of words into a single string separated by spaces.

def words_to_sentence(words)
  words.join(" ")
end

array_words = ["Hello", "world", "from", "Ruby"]
p words_to_sentence(array_words)
# Output: "Hello world from Ruby"



# # Solution
# def words_to_sentence(words)
#   words.join(" ")
# end

# array_words = ["Hello", "world", "from", "Ruby"]
# p words_to_sentence(array_words)
# # Output: "Hello world from Ruby"


#------------------------------------------------------------------------------
# Problem 2: Write a function that converts an array of characters into a single string without spaces.

def chars_to_string(chars)
  chars.join
end

letters = ["a", "b", "c"]
p chars_to_string(letters)
# Output: "abc"



# # Solution
# def chars_to_string(chars)
#   chars.join
# end

# letters = ["a", "b", "c"]
# p chars_to_string(letters)
# # Output: "abc"


#------------------------------------------------------------------------------
# Problem 3: Write a function that joins an array of dates with a hyphen.

def join_with_hyphen(dates)
  dates.join("-")
end

dates = ["2023", "01", "10"]
puts join_with_hyphen(dates)
# Output: "2023-01-10"


# # Solution
# def join_with_hyphen(dates)
#   dates.join("-")
# end

# dates = ["2023", "01", "10"]
# puts join_with_hyphen(dates)
# # Output: "2023-01-10"


#------------------------------------------------------------------------------
# Problem 1: Write a function that sorts an array of numbers in ascending order.

def sort_ascending(numbers)
  numbers.sort
end

nums = [5, 2, 8, 1, 3]
p sort_ascending(nums)
# Output: [1, 2, 3, 5, 8]



# # Solution 1
# def sort_ascending(numbers)
#   numbers.sort
# end

# nums = [5, 2, 8, 1, 3]
# p sort_ascending(nums)
# # Output: [1, 2, 3, 5, 8]


# # Solution 2
# def sort_ascending(numbers)
#   numbers.sort_by { |num| num }
# end

# nums = [5, 2, 8, 1, 3]
# p sort_ascending(nums)
# # Output: [1, 2, 3, 5, 8]


#------------------------------------------------------------------------------
# Problem 2: Write a function that sorts an array of strings in alphabetical order.

def sort_alphabetical(words)
  words.sort
end

word_list = ["banana", "apple", "cherry"]
p sort_alphabetical(word_list)
# Output: ["apple", "banana", "cherry"]



# # Solution
# def sort_alphabetical(words)
#   words.sort
# end

# word_list = ["banana", "apple", "cherry"]
# p sort_alphabetical(word_list)
# # Output: ["apple", "banana", "cherry"]



#------------------------------------------------------------------------------
# Problem 3: Sort an array of numbers in descending order.

def sort_descending(numbers)
  numbers.sort.reverse
end

nums = [5, 2, 8, 1]
p sort_descending(nums)
# Output: [8, 5, 2, 1]


# # Solution
# def sort_descending(numbers)
#   numbers.sort.reverse
# end

# nums = [5, 2, 8, 1]
# p sort_descending(nums)
# # Output: [8, 5, 2, 1]


#------------------------------------------------------------------------------
# Problem 4: Sort an array of numbers in descending order using this syntax `{ |a, b| b <=> a }`

def sort_descending(numbers)
  numbers.sort {|a, b| b <=> a}
end

nums = [5, 2, 8, 1]
p sort_descending(nums)
# Output: [8, 5, 2, 1]


# # Solution
# def sort_descending(numbers)
#   numbers.sort { |a, b| b <=> a }
# end

# nums = [5, 2, 8, 1]
# p sort_descending(nums)
# # Output: [8, 5, 2, 1]


#------------------------------------------------------------------------------
# Problem 1: Write a function that checks if a number exists in an array.

def array_includes_number?(array, number)
  array.include?(number)
end

nums = [1, 2, 3, 4, 5]
p array_includes_number?(nums, 3)
# Output: true

p array_includes_number?(nums, 6)
# Output: false



# # Solution
# def array_includes_number?(array, number)
#   array.include?(number)
# end

# nums = [1, 2, 3, 4, 5]
# p array_includes_number?(nums, 3)
# # Output: true

# p array_includes_number?(nums, 6)
# # Output: false


#------------------------------------------------------------------------------
# Problem 2: Write a function that checks if a hash includes a specific key.

def includes_key?(hash, key)
  hash.include?(key)
end

data = { name: "Alice", age: 25 }
p includes_key?(data, :name)
# Output: true

p includes_key?(data, :height)
# Output: false



# # Solution
# def includes_key?(hash, key)
#   hash.include?(key)
# end

# data = { name: "Alice", age: 25 }
# p includes_key?(data, :name)
# # Output: true

# p includes_key?(data, :height)
# # Output: false


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and a value, returning [first_index, last_index] of that value.

def find_first_and_last_index(array, value)
  [array.index(value), array.rindex(value)]
end

numbers = [4, 5, 6, 5, 7]
p find_first_and_last_index(numbers, 5)
# Output: [1, 3]



# # Solution
# def find_first_and_last_index(array, value)
#   [array.index(value), array.rindex(value)]
# end

# numbers = [4, 5, 6, 5, 7]
# p find_first_and_last_index(numbers, 5)
# # Output: [1, 3]


#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the index of the first odd number in an array.

def index_of_first_odd(array)
  array.find_index {|elem| elem.odd?}
end

mixed_numbers = [2, 4, 6, 7, 9]
p index_of_first_odd(mixed_numbers)
# Output: 3 (index of 7)



# # Solution
# def index_of_first_odd(array)
#   array.find_index { |num| num.odd? }
# end

# mixed_numbers = [2, 4, 6, 7, 9]
# p index_of_first_odd(mixed_numbers)
# # Output: 3 (index of 7)



#------------------------------------------------------------------------------
# Problem 1: Write a function that returns both the max and min values from an array.

def find_extremes(array)
  [array.max, array.min]
end

range_array = [2, 8, 1, 10, 5]
p find_extremes(range_array)
# Output: [10, 1]



# # Solution
# def find_extremes(array)
#   [array.max, array.min]
# end

# range_array = [2, 8, 1, 10, 5]
# p find_extremes(range_array)
# # Output: [10, 1]



#------------------------------------------------------------------------------
# Problem 1: Write a function that removes duplicates from an array of numbers.

def remove_duplicates(numbers)
  numbers.uniq
end

nums = [1, 2, 2, 3, 3, 3]
p remove_duplicates(nums)
# Output: [1, 2, 3]



# # Solution
# def remove_duplicates(numbers)
#   numbers.uniq
# end

# nums = [1, 2, 2, 3, 3, 3]
# p remove_duplicates(nums)
# # Output: [1, 2, 3]


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the count of unique elements in an array.

def count_unique_elements(array)
  array.uniq.size
end

numbers = [1, 1, 2, 3, 2, 4]
p count_unique_elements(numbers)
# Output: 4



# # Solution
# def count_unique_elements(array)
#   array.uniq.size
# end

# numbers = [1, 1, 2, 3, 2, 4]
# p count_unique_elements(numbers)
# # Output: 4



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns its first element.

def first_element(array)
  array.first
end

numbers = [10, 20, 30]
p first_element(numbers)
# Output: 10



# # Solution
# def first_element(array)
#   array.first
# end

# numbers = [10, 20, 30]
# p first_element(numbers)
# # Output: 10



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns its last element.

def last_element(array)
  array.last
end

numbers = [4, 5, 6]
p last_element(numbers)
# Output: 6



# # Solution
# def last_element(array)
#   array.last
# end

# numbers = [4, 5, 6]
# p last_element(numbers)
# # Output: 6



#------------------------------------------------------------------------------
# Problem 1: Write a function that flattens a 2D array into a 1D array.

def flatten_2d(array)
  array.flatten
end

array_2d = [[1, 2], [3, 4]]
p flatten_2d(array_2d)
# Output: [1, 2, 3, 4]



# # Solution
# def flatten_2d(array)
#   array.flatten
# end

# array_2d = [[1, 2], [3, 4]]
# p flatten_2d(array_2d)
# # Output: [1, 2, 3, 4]


#------------------------------------------------------------------------------
# Problem 2: Write a function that flattens a nested array of any depth.

def flatten_any_depth(array)
  array.flatten
end

nested_array = [1, [2, [3, [4]]]]
p flatten_any_depth(nested_array)
# Output: [1, 2, 3, 4]



# # Solution
# def flatten_any_depth(array)
#   array.flatten
# end

# nested_array = [1, [2, [3, [4]]]]
# p flatten_any_depth(nested_array)
# # Output: [1, 2, 3, 4]



#------------------------------------------------------------------------------
# Problem 1: Write a function that returns a random element from an array.

def random_element(array)
  array.sample
end

random_nums = [10, 20, 30, 40]
p random_element(random_nums)
# Output: (random element)



# # Solution
# def random_element(array)
#   array.sample
# end

# random_nums = [10, 20, 30, 40]
# p random_element(random_nums)
# # Output: (random element)



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and removes its first element, returning the removed element.

def shift_element(array)
  array.shift
end

shift_array = [7, 8, 9]
p shift_element(shift_array)
# Output: 7

p shift_array
# Output Now: [8, 9]



# # Solution
# def shift_element(array)
#   array.shift
# end

# shift_array = [7, 8, 9]
# p shift_element(shift_array)
# # Output: 7

# p shift_array
# # Output Now: [8, 9]



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and a value, and unshifts the value to the front of the array.

def unshift_element(array, value)
  array.unshift(value)
end

unshift_array = [2, 3]
p unshift_element(unshift_array, 1)



# # Solution
# def unshift_element(array, value)
#   array.unshift(value)
# end

# unshift_array = [2, 3]
# p unshift_element(unshift_array, 1)


#------------------------------------------------------------------------------
# Problem 2: Write a function that takes in an array and 3 values, and unshifts the 3 values to the front of the array.

def unshift_element(array, value1, value2, value3)
  array.unshift(value1, value2, value3)
end

unshift_array = [4, 5]
p unshift_element(unshift_array, 1, 2, 3)
# Output Now: [1, 2, 3, 4, 5]



# # Solution
# def unshift_element(array, value1, value2, value3)
#   array.unshift(value1, value2, value3)
# end

# unshift_array = [4, 5]
# p unshift_element(unshift_array, 1, 2, 3)
# # Output Now: [1, 2, 3, 4, 5]


#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns a new array without nil values.

def remove_nil(array)
  array.compact
end

nil_array = [1, nil, 2, nil, 3]
p remove_nil(nil_array)
# Output: [1, 2, 3]



# # Solution
# def remove_nil(array)
#   array.compact
# end

# nil_array = [1, nil, 2, nil, 3]
# p remove_nil(nil_array)
# # Output: [1, 2, 3]



#------------------------------------------------------------------------------
# Problem 1: Get the element at a specific index in an array.

def get_element_at(array, index)
  array.slice(index)
end

nums = [10, 20, 30, 40]
p get_element_at(nums, 2)
# Output: 30


# # Solution
# def get_element_at(array, index)
#   array.slice(index)
# end

# nums = [10, 20, 30, 40]
# p get_element_at(nums, 2)
# # Output: 30


#------------------------------------------------------------------------------
# Problem 2: Write a function that slices the first 3 elements from an array.

def slice_first_three(array)
  array.slice(0, 3)
end

slice_array = [4, 5, 6, 7, 8]
p slice_first_three(slice_array)
# Output: [4, 5, 6]


# # Solution
# def slice_first_three(array)
#   array.slice(0, 3)
# end

# slice_array = [4, 5, 6, 7, 8]
# p slice_first_three(slice_array)
# # Output: [4, 5, 6]



#------------------------------------------------------------------------------
# Problem 1: Write a function that partitions an array of numbers into even and odd arrays.

def partition_even_odd(array)
  array.partition{|num| num.even?}
end

part_array = [1, 2, 3, 4, 5, 6]
p partition_even_odd(part_array)
# Output: [[2, 4, 6], [1, 3, 5]]



# # Solution
# def partition_even_odd(array)
#   array.partition { |num| num.even? }
# end

# part_array = [1, 2, 3, 4, 5, 6]
# p partition_even_odd(part_array)
# # Output: [[2, 4, 6], [1, 3, 5]]


#------------------------------------------------------------------------------
# Alternative solution to Partition problem 1
numbers = [1, 2, 3, 4, 5, 6]

# Partition numbers into even and odd
even, odd = numbers.partition { |num| num.even? }

# puts even.inspect
# # Output: [2, 4, 6]
# puts odd.inspect
# # Output: [1, 3, 5]


#------------------------------------------------------------------------------
# Problem 2: Write a function that partitions an array into numbers greater than 10 from others.

def partition_greater_than_10(numbers)
  numbers.partition {|num| num > 10}
end

nums = [5, 15, 8, 20, 3]
p partition_greater_than_10(nums)
# Output: [[15, 20], [5, 8, 3]]


# # Solution
# def partition_greater_than_10(numbers)
#   numbers.partition { |num| num > 10 }
# end

# nums = [5, 15, 8, 20, 3]
# p partition_greater_than_10(nums)
# # Output: [[15, 20], [5, 8, 3]]



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns all 2-element combinations.

def two_element_combinations(array)
  array.combination(2).to_a
end

combo_array = ['a', 'b', 'c']
p two_element_combinations(combo_array)
# Output: [["a", "b"], ["a", "c"], ["b", "c"]]



# # Solution
# def two_element_combinations(array)
#   array.combination(2).to_a
# end

# combo_array = ['a', 'b', 'c']
# p two_element_combinations(combo_array)
# # Output: [["a", "b"], ["a", "c"], ["b", "c"]]



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns all permutations of length 2.

def two_element_permutations(array)
  array.permutation(2).to_a
end

perm_array = [1, 2, 3]
p two_element_permutations(perm_array)
# Output: [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]



# # Solution
# def two_element_permutations(array)
#   array.permutation(2).to_a
# end

# perm_array = [1, 2, 3]
# p two_element_permutations(perm_array)
# # Output: [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]


#------------------------------------------------------------------------------
# Problem 1: Write a function that rotates an array by 1 position to the left.

def rotate_left_by_one(array)
  array.rotate(1)
end

rotate_array = [1, 2, 3, 4]
p rotate_left_by_one(rotate_array)
# Output: [2, 3, 4, 1]



# # Solution
# def rotate_left_by_one(array)
#   array.rotate(1)
# end

# rotate_array = [1, 2, 3, 4]
# p rotate_left_by_one(rotate_array)
# # Output: [2, 3, 4, 1]



