#------------------------------------------------------------------------------
# Highest-importance methods (.sort, .push, .pop, .include?, .uniq, .first/.last, .shift/.unshift) frequently appear in array manipulation, searching, or basic data-structure usage.
#------------------------------------------------------------------------------

sort
# What it does: Returns a new array with the elements sorted in ascending order by default.
# Why use it: Organizing data in a meaningful order, such as numerically or alphabetically.

# Syntax:     Sorts elements based on their natural order.

# Arrays
array.sort
array.sort { |a, b| custom_block }   # Custom sorting logic.

# For descending order:
array.sort.reverse               # Or use
array.sort { |a, b| b <=> a }

# Hash:
# Hashes cannot be directly sorted. Use .sort to return a sorted array of key-value pairs.
hash.sort { |(key1, value1), (key2, value2)| block }

#------------------------------------------------------------------------------
# Problem 1: Write a function that sorts an array of numbers in ascending order.

def sort_ascending(numbers)
  numbers.sort
end

nums = [5, 2, 8, 1, 3]
p sort_ascending(nums)
# Output: [1, 2, 3, 5, 8]

#------------------------------------------------------------------------------
# Problem 2: Write a function that sorts an array of strings in alphabetical order.

def sort_alphabetical(words)
  words.sort
end

word_list = ["banana", "apple", "cherry"]
p sort_alphabetical(word_list)
# Output: ["apple", "banana", "cherry"]

#------------------------------------------------------------------------------
# Problem 3: Sort an array of numbers in descending order.

def sort_descending(numbers)
  numbers.sort.reverse
end

nums = [5, 2, 8, 1]
p sort_descending(nums)
# Output: [8, 5, 2, 1]

#------------------------------------------------------------------------------
# Problem 4: Sort an array of numbers in descending order using this syntax `{ |a, b| b <=> a }`

def sort_descending(numbers)
  numbers.sort { |a, b| b <=> a }
end

nums = [5, 2, 8, 1]
p sort_descending(nums)
# Output: [8, 5, 2, 1]

#------------------------------------------------------------------------------
# Problem 5: Write a function that sorts a hash by its keys.

def sort_hash_by_keys(hash)
  hash.sort.to_h # Sorts key-value pairs by keys and converts the result back to a hash.
end

example_hash = { c: 3, a: 1, b: 2 }
p sort_hash_by_keys(example_hash)
# Output: { a: 1, b: 2, c: 3 }

#------------------------------------------------------------------------------
# Problem 6: Write a function that sorts a hash by its values.

def sort_hash_by_values(hash)
  hash.sort { |(_, value1), (_, value2)| value1 <=> value2 }.to_h # Sorts key-value pairs by values.
end

example_hash = { c: 3, a: 1, b: 2 }
p sort_hash_by_values(example_hash)
# Output: { a: 1, b: 2, c: 3 }



push
# What it does: Adds one or more elements to the end of an array.
# Why use it: Building or expanding an array without creating a new one.

# Syntax:
array.push(element)
array.push(element1, element2, ...)

#------------------------------------------------------------------------------
# Problem 1: Write a function that adds a single element to an array.
# Solution 1
def add_element(array, element)
  array.push(element)
end

numbers = [1, 2, 3]
p add_element(numbers, 4)
# Output: [1, 2, 3, 4]


# Solution 2
def add_element(array, element)
  array << element
end

numbers = [1, 2, 3]
p add_element(numbers, 4)
# Output: [1, 2, 3, 4]


#------------------------------------------------------------------------------
# Problem 2: Write a function that adds all elements of one array to another array.
# Solution 1
def merge_arrays(arr1, arr2)
  arr2.each { |elem| arr1.push(elem) }
  arr1
end

nums1 = [1, 2]
nums2 = [3, 4]
p merge_arrays(nums1, nums2)
# Output: [1, 2, 3, 4]


# Solution 2
def merge_arrays(arr1, arr2)
  arr2.each do |elem|
    arr1 << elem
  end
  arr1
end

nums1 = [1, 2]
nums2 = [3, 4]
p merge_arrays(nums1, nums2)
# Output: [1, 2, 3, 4]



pop
# What it does: Removes and returns the last element from an array.
# Why use it: Retrieving an item from the end of the array while reducing its size.

# Syntax:
array.pop                 # Removes the last element
array.pop(n)              # Removes the last `n` elements

#------------------------------------------------------------------------------
# Problem 1: Write a function that removes the last element from an array and returns it.

def remove_last(array)
  array.pop
end

numbers = [1, 2, 3]
p remove_last(numbers)
# Output: 3
p numbers
# Output: [1, 2]


#------------------------------------------------------------------------------
# Problem 2: Write a function that removes the last 4 elements from an array and returns it.

def remove_last(array)
  array.pop(4)
end

numbers = [1, 2, 3, 4, 5]
p remove_last(numbers)
# Output: [2, 3, 4, 5]
p numbers
# Output: [1]


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



include?
# What it does: Checks if a specific element exists in a collection (array or string).
# Why use it: To quickly verify if a value or substring is present.

# Syntax:

# For arrays
array.include?(element)

# For strings
string.include?(substring)

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

#------------------------------------------------------------------------------
# Problem 2: Write a function that checks if a string contains the substring "ruby".

def contains_ruby?(str)
  str.include?("ruby")
end

string1 = "I love ruby programming"
string2 = "I love python programming"
p contains_ruby?(string1)
# Output: true
p contains_ruby?(string2)
# Output: false

#------------------------------------------------------------------------------
# Problem 3: Write a function that checks if a name is in a list of guests (comma-separated string).

def guest_in_list?(guest_list, name)
  guest_list.include?(name)
end

list = "Alice,Bob,Carol"
p guest_in_list?(list, "Bob")
# Output: true
p guest_in_list?(list, "David")
# Output: false

#------------------------------------------------------------------------------
# Problem 4: Write a function that checks if a hash includes a specific key.

def includes_key?(hash, key)
  hash.include?(key)
end

data = { name: "Alice", age: 25 }
p includes_key?(data, :name)
# Output: true

p includes_key?(data, :height)
# Output: false



uniq
# What it does: Returns a new array by removing duplicate elements.
# Why use it: Filtering out repeats to get unique values from a collection.

# Syntax:
array.uniq

#------------------------------------------------------------------------------
# Problem 1: Write a function that removes duplicates from an array of numbers.

def remove_duplicates(numbers)
  numbers.uniq
end

nums = [1, 2, 2, 3, 3, 3]
p remove_duplicates(nums)
# Output: [1, 2, 3]


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the count of unique elements in an array.

def count_unique_elements(array)
  array.uniq.size
end

numbers = [1, 1, 2, 3, 2, 4]
p count_unique_elements(numbers)
# Output: 4



first
# What it does: Returns the first element of an array (or the first n elements if given an argument).
# Why use it: Quickly access the beginning of a list.

# Syntax:
array.first
array.first(n)

#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns its first element.

def first_element(array)
  array.first
end

sample_array = [10, 20, 30]
p first_element(sample_array)
# Output: 10



last
# What it does: Returns the last element of an array (or the last n elements if given an argument).
# Why use it: Quickly access the end of a list.

# Syntax:
array.last
array.last(n)

#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns its last element.

def last_element(array)
  array.last
end
nums_array = [4, 5, 6]
p last_element(nums_array)
# Output: 6



shift
# What it does: Removes the first element from an array and returns it.
# Why use it: To remove and retrieve the first element(s) of a collection, often for sequential processing.


# Syntax:
array.shift           # Removes and returns the first element
array.shift(n)        # Removes and returns the first `n` elements as a new array

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



unshift
# What it does: Adds one or more elements to the front of an array.
# Why use it: To add element(s) at the start of an array. Opposite of .push

# Syntax:
array.unshift(value)
array.unshift(value1, value2, ...)

#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and a value, and unshifts the value to the front of the array.

def unshift_element(array, value)
  array.unshift(value)
end

unshift_array = [2, 3]
p unshift_element(unshift_array, 1)
# Output Now: [1, 2, 3]

#------------------------------------------------------------------------------
# Problem 2: Write a function that takes in an array and 3 values, and unshifts the 3 values to the front of the array.

def unshift_element(array, value1, value2, value3)
  array.unshift(value1, value2, value3)
end

unshift_array = [4, 5]
p unshift_element(unshift_array, 1, 2, 3)
# Output Now: [1, 2, 3, 4, 5]




#------------------------------------------------------------------------------
# Medium-importance methods (.slice, .max/.min, .index/.rindex/.find_index, .join, .flatten, .compact, .partition) are often situational but still come up in a variety of easy/medium challenges.
#------------------------------------------------------------------------------

slice
# What it does: Retrieves a subset of an array by index or range.
# Why use it: Extract specific segments of an array without modifying the original.

# Syntax:
# For Arrays:
array.slice(index)          # Returns the element at the given index
array.slice(start, length)  # Returns a subarray starting at 'start' with 'length' elements

# For Strings:
string.slice(index)         # Returns the character at the given index
string.slice(start, length) # Returns a substring starting at 'start' with 'length' characters

#------------------------------------------------------------------------------
# Problem 1: Get the element at a specific index in an array.

def get_element_at(array, index)
  array.slice(index)
end

nums = [10, 20, 30, 40]
p get_element_at(nums, 2)
# Output: 30

#------------------------------------------------------------------------------
# Problem 2: Write a function that slices the first 3 elements from an array.

def slice_first_three(array)
  array.slice(1, 3)

end
slice_array = [4, 5, 6, 7, 8]
p slice_first_three(slice_array)
# Output: [5, 6, 7]



.max / .min
# What it does: .max returns the largest element; .min returns the smallest.
# Why use it: Quickly retrieve the extremes in numeric or comparable data.

# Syntax:
array.max
array.min

#------------------------------------------------------------------------------
# Problem 1: Write a function that returns both the max and min values from an array.
def find_extremes(array)
  [array.max, array.min]
end

range_array = [2, 8, 1, 10, 5]
p find_extremes(range_array)
# Output: [10, 1]



.index
.rindex
# What it does: .index returns the first index where the element is found; .rindex returns the last.
# Why use it: Find the position(s) of an element to locate or manipulate it.

# Syntax:
array.index(element)
array.rindex(element)
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and a value, returning [first_index, last_index] of that value.

def find_first_and_last_index(array, value)
  [array.index(value), array.rindex(value)]
end

numbers = [4, 5, 6, 5, 7]
p find_first_and_last_index(numbers, 5)
# Output: [1, 3]



find_index
# What it does: Finds the index of the first element in an array that matches a given condition (based on a block).
# Why use it: To locate the position of the first element that satisfies a specific condition.

# Syntax:
array.find_index { |element| condition }

#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the index of the first odd number in an array.

def index_of_first_odd(array)
  array.find_index { |num| num.odd? }
end

mixed_numbers = [2, 4, 6, 7, 9]
p index_of_first_odd(mixed_numbers)
# Output: 3 (index of 7)



join
# What it does: Combines all elements of an array into a single string, optionally separated by a chosen delimiter (e.g., "-", ",", etc.).
# Why use it: Ideal for creating strings from lists, such as generating a sentence or producing CSV data.

# Delimeter: a character or set of characters used to separate elements in a string or data structure.
# Ex:
# Space (" ")
# Comma (",")
# Hyphen ("-")
# No Delimiter ("")
# Pipe ("|")
# Newline ("\n")

# Syntax:
array.join("delimiter")
# 'delimiter' is optional. By default, it joins without any space or character.

#------------------------------------------------------------------------------
# Problem 1: Write a function that converts an array of words into a single string separated by spaces.

def words_to_sentence(words)
  words.join(" ")
end

arr_words = ["Hello", "world", "from", "Ruby"]
p words_to_sentence(arr_words)
# Output: "Hello world from Ruby"


#------------------------------------------------------------------------------
# Problem 2: Write a function that converts an array of characters into a single string without spaces.

def chars_to_string(chars)
  chars.join
end

letters = ["a", "b", "c"]
p chars_to_string(letters)
# Output: "abc"


#------------------------------------------------------------------------------
# Problem 3: Write a function that joins an array of dates with a hyphen.

def join_with_hyphen(dates)
  dates.join("-")
end

dates = ["2023", "01", "10"]
puts join_with_hyphen(dates)
# Output: "2023-01-10"



flatten
# What it does: Converts a multi-dimensional array into a one-dimensional array.
# Why use it: Simplifies nested structures, making data easier to process in a single loop.

# Syntax:
array.flatten
#------------------------------------------------------------------------------
# Problem 1: Write a function that flattens a 2D array into a 1D array.
# Solution 1
def flatten_2d(array)
  array.flatten
end

arr_2d = [[1, 2], [3, 4]]
p flatten_2d(arr_2d)
# Output: [1, 2, 3, 4]

#------------------------------------------------------------------------------
# Problem 2: Write a function that flattens a nested array of any depth.
# Solution 1
def flatten_any_depth(array)
  array.flatten
end

nested_array = [1, [2, [3, [4]]]]
p flatten_any_depth(nested_array)
# Output: [1, 2, 3, 4]



compact
# What it does: Removes all nil elements from an array, returning a new array.
# Why use it: Cleanup arrays and eliminate nil values.

# Syntax:
array.compact
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns a new array without nil values.
def remove_nil(array)
  array.compact
end

nil_array = [1, nil, 2, nil, 3]
p remove_nil(nil_array)
# Output: [1, 2, 3]



partition
# What it does: Splits an array into two arrays, based on the true/false result of a block.
# Why use it: Separate elements that meet a criterion from those that don't.

# Syntax:
array.partition { |element| condition }

#------------------------------------------------------------------------------
# Problem 1: Write a function that partitions an array of numbers into even and odd arrays.
def partition_even_odd(array)
  array.partition { |num| num.even? }
end

part_array = [1, 2, 3, 4, 5, 6]
p partition_even_odd(part_array)
# Output: [[2, 4, 6], [1, 3, 5]]


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
  numbers.partition { |num| num > 10 }
end

nums = [5, 15, 8, 20, 3]
p partition_greater_than_10(nums)
# Output: [[15, 20], [5, 8, 3]]




#------------------------------------------------------------------------------
# Lower-importance methods (.sample, .combination, .permutation, .rotate) are more specialized or advanced; they’re powerful but appear less often in standard coding challenge contexts.
#------------------------------------------------------------------------------

sample
# What it does: Returns a random element (or multiple elements) from an array.
# Why use it: Perfect for randomization tasks or sampling data.

# Syntax:
array.sample
array.sample(n)

#------------------------------------------------------------------------------
# Problem 1: Write a function that returns a random element from an array.
def random_element(array)
  array.sample
end

random_nums = [10, 20, 30, 40]
p random_element(random_nums)
# Output: (random element)


combination
# What it does: Generates all unique combinations of a given length from the array.
# Why use it: Useful in combinatorial tasks or finding subsets.

# Syntax:
array.combination(n).to_a
# Returns an enumerator of all combinations of length `n`.

# Key Tip: you can call `.to_a` to convert the enumerator into an array of combinations.

#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns all 2-element combinations.
def two_element_combinations(array)
  array.combination(2).to_a
end

combo_array = ['a', 'b', 'c']
p two_element_combinations(combo_array)
# Output: [["a", "b"], ["a", "c"], ["b", "c"]]



permutation
# What it does: Generates permutations of the array elements (all possible orderings).
# Why use it: Essential for problems requiring every arrangement (e.g., permutations of letters).

# Syntax:
array.permutation(n).to_a

# Key Tip: you can call `.to_a` to convert the enumerator into an array of combinations.

#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns all permutations of length 2.
def two_element_permutations(array)
  array.permutation(2).to_a
end

perm_array = [1, 2, 3]
p two_element_permutations(perm_array)
# Output: [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]



rotate
# What it does: Returns a new array by rotating elements left by a given count.
# Why use it: Cyclically shift items without manual loops.

# Syntax:
array.rotate          # Rotates once (default is by 1 position)
array.rotate(n)       # Rotates by `n` positions (positive for left, negative for right)

#------------------------------------------------------------------------------
# Problem 1: Write a function that rotates an array by 1 position to the left.
def rotate_left_by_one(array)
  array.rotate(1)
end

rotate_array = [1, 2, 3, 4]
p rotate_left_by_one(rotate_array)
# Output: [2, 3, 4, 1]






#------------------------------------------------------------------------------
# SKIP THIS... .FIND INSTEAD OF BSEARCH

bsearch
# # What it does: Performs a binary search on a sorted array, returning an element if found (or nil).
# # Why use it: Efficient lookup in sorted data (O(log n) complexity).

# # To us bsearch the array must be SORTED

# # How bsearch Works:
# # bsearch assumes the array is sorted. It splits the array into halves, checks the block condition ({ |x| x >= target }) at the middle element, and decides to search in the left or right half based on the result (true or false).

# # Syntax:
# array.bsearch { |element| condition }
# #------------------------------------------------------------------------------
# # Problem 1: Write a function that takes in a sorted array and a target, and returns the element if found.
# def binary_search(array, target)
#   array.bsearch { |x| x >= target }
# end

# sorted_array = [1, 3, 5, 7, 9]
# p binary_search(sorted_array, 5)
# # Output: 5 (when target is 5)


# #------------------------------------------------------------------------------
# # Problem 2: Write a function that takes in a sorted array and a target, and returns the element if found.
# def binary_search(array, target)
#   array.bsearch { |x| x == target }
# end

# sorted_array = [1, 3, 5, 7, 9]
# p binary_search(sorted_array, 7)
# # Output: 7 (when target is 7)



