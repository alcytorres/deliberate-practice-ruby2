push
# What it does: Adds an element to the end of an array.
# Why use it: Handy for appending new items in place without creating a new array.

# Syntax:
array.push(element)



pop
# What it does: Removes the last element from an array and returns it.
# Why use it: Useful when you need to remove the most recently added item.

# Syntax:
removed_element = array.pop



join
# What it does: Converts the elements of an array into a single string, separated by a given delimiter.
# Why use it: Helpful for creating text output from array data.

# Syntax:
array.join("delimiter")



sort
# What it does: Sorts the elements of an array in ascending order (by default).
# Why use it: Crucial for arranging data or performing sorting algorithms.

# Syntax:
array.sort
# or
array.sort { |a, b| b <=> a }  # for descending order



include?
# What it does: Checks if an array contains a specific element.
# Why use it: Quickly verify membership before performing an action or returning a result.

# Syntax:
array.include?(item)



.index / .rindex
# What it does: .index returns the first index where the element is found; .rindex returns the last.
# Why use it: Find the position(s) of an element to locate or manipulate it.

# Syntax:
array.index(element)
array.rindex(element)



.find_index
# What it does: Returns the index of the first element for which the block condition is true.
# Why use it: More flexible than .index by allowing a condition rather than a direct element match.

# Syntax:
array.find_index do |element|
  # condition that returns true or false
end



.max / .min
# What it does: .max returns the largest element; .min returns the smallest.
# Why use it: Quickly retrieve the extremes in numeric or comparable data.

# Syntax:
array.max
array.min



uniq
# What it does: Removes duplicate elements, returning a new array of unique values.
# Why use it: Keep only distinct items, often for cleaning or filtering data.

# Syntax:
array.uniq



first
# What it does: Returns the first element of an array (or the first n elements if given an argument).
# Why use it: Quickly access the beginning of a list.

# Syntax:
array.first
array.first(n)



last
# What it does: Returns the last element of an array (or the last n elements if given an argument).
# Why use it: Quickly access the end of a list.

# Syntax:
array.last
array.last(n)



flatten
# What it does: Converts nested arrays into a single-level array.
# Why use it: Useful for simplifying complex data structures.

# Syntax:
array.flatten



sample
# What it does: Returns a random element (or multiple elements) from an array.
# Why use it: Perfect for randomization tasks or sampling data.

# Syntax:
array.sample
array.sample(n)



shift
# What it does: Removes the first element from an array and returns it.
# Why use it: Dequeue-like functionality, often for sequential processing.

# Syntax:
removed_element = array.shift



unshift
# What it does: Adds one or more elements to the front of an array.
# Why use it: Opposite of .push — useful for prepending data.

# Syntax:
array.unshift(element)



compact
# What it does: Removes all nil elements from an array, returning a new array.
# Why use it: Cleanup arrays and eliminate nil values.

# Syntax:
array.compact



slice
# What it does: Retrieves a subset of an array by index or range.
# Why use it: Extract specific segments of an array without modifying the original.

# Syntax:
array.slice(index, length)
array.slice(range)



partition
# What it does: Splits an array into two arrays, based on the true/false result of a block.
# Why use it: Separate elements that meet a criterion from those that don't.

# Syntax:
true_arr, false_arr = array.partition do |element|
  # condition
end



combination
# What it does: Generates all unique combinations of a given length from the array.
# Why use it: Useful in combinatorial tasks or finding subsets.

# Syntax:
array.combination(2) do |combo|
  # combo is an array of 2 elements
end



permutation
# What it does: Generates permutations of the array elements (all possible orderings).
# Why use it: Essential for problems requiring every arrangement (e.g., permutations of letters).

# Syntax:
array.permutation(2) do |perm|
  # perm is an array of 2 elements
end



rotate
# What it does: Returns a new array by rotating elements left by a given count.
# Why use it: Cyclically shift items without manual loops.

# Syntax:
array.rotate
array.rotate(n)  # n can be negative for right rotation



bsearch
# What it does: Performs a binary search on a sorted array, returning an element if found (or nil).
# Why use it: Efficient lookup in sorted data (O(log n) complexity).

# Syntax:
array.bsearch do |element|
  # block returns -1, 0, or 1 in older Ruby;
  # more commonly, a boolean for "find minimum/maximum" usage
end

























# 1) .push – Adds an element to the end of an array.
# Write a function that takes in an array and a value, then pushes the value to the end of the array.
def push_element(arr, val)
  arr.push(val)
end
numbers = [1, 2, 3] # Output: [1, 2, 3, 4]
p push_element(numbers, 4)


# 2) .pop – Removes the last element from an array.
# Write a function that takes in an array and removes its last element, returning the removed element.
def pop_element(arr)
  arr.pop
end
nums = [5, 6, 7] # Output: 7
p pop_element(nums)
p nums # Array now: [5, 6]


# 3) .join – Converts an array to a string with a specified separator.
# Write a function that takes in an array of words and returns a single string joined by a separator.
def join_words(words, separator)
  words.join(separator)
end
words = ["Hello", "World"] # Output: "Hello World"
p join_words(words, " ")


# 4) .sort – Sorts an array in ascending order.
# Write a function that takes in an array of numbers and returns a sorted array.
def sort_array(arr)
  arr.sort
end
unsorted = [3, 1, 2] # Output: [1, 2, 3]
p sort_array(unsorted)


# 5) .include? – Checks if the array contains a specific element.
# Write a function that takes in an array and a value, and returns true if the array includes that value.
def contains_value?(arr, val)
  arr.include?(val)
end
check_array = [10, 20, 30] # Output: true
p contains_value?(check_array, 20)


# 6) .index / .rindex – Finds the index of the first/last occurrence of an element.
# Write a function that takes in an array and a value, returning [first_index, last_index] of that value.
def find_first_and_last_index(arr, val)
  [arr.index(val), arr.rindex(val)]
end
example_arr = [4, 5, 6, 5, 7] # Output: [1, 3]
p find_first_and_last_index(example_arr, 5)


# 7) .find_index – Finds the index of the first element matching a block condition.
# Write a function that returns the index of the first odd number in an array.
def index_of_first_odd(arr)
  arr.find_index { |num| num.odd? }
end
mixed_numbers = [2, 4, 6, 7, 9] # Output: 3 (index of 7)
p index_of_first_odd(mixed_numbers)


# 8) .max / .min – Returns the maximum/minimum value from an array.
# Write a function that returns both the max and min values from an array.
def find_extremes(arr)
  [arr.max, arr.min]
end
range_array = [2, 8, 1, 10, 5] # Output: [10, 1]
p find_extremes(range_array)


# 9) .uniq – Removes duplicate elements from an array.
# Write a function that takes in an array and returns a new array with duplicates removed.
def remove_duplicates(arr)
  arr.uniq
end
dupe_array = [1, 2, 2, 3, 1] # Output: [1, 2, 3]
p remove_duplicates(dupe_array)


# 10) .first – Retrieves the first element of an array.
# Write a function that takes in an array and returns its first element.
def first_element(arr)
  arr.first
end
sample_array = [10, 20, 30] # Output: 10
p first_element(sample_array)


# 11) .last – Retrieves the last element of an array.
# Write a function that takes in an array and returns its last element.
def last_element(arr)
  arr.last
end
nums_array = [4, 5, 6] # Output: 6
p last_element(nums_array)


# 12) .flatten – Converts nested arrays into a single array.
# Write a function that takes in a nested array and returns a flattened version.
def flatten_array(arr)
  arr.flatten
end
nested = [[1, 2], [3, 4], 5] # Output: [1, 2, 3, 4, 5]
p flatten_array(nested)


# 13) .sample – Retrieves a random element from an array.
# Write a function that returns a random element from an array.
def random_element(arr)
  arr.sample
end
random_nums = [10, 20, 30, 40] # Output: (random element)
p random_element(random_nums)


# 14) .shift – Removes the first element from an array.
# Write a function that takes in an array and removes its first element, returning the removed element.
def shift_element(arr)
  arr.shift
end
shift_arr = [7, 8, 9] # Output: 7
p shift_element(shift_arr)
p shift_arr # Now [8, 9]


# 15) .unshift – Adds an element to the beginning of an array.
# Write a function that takes in an array and a value, and unshifts the value to the front of the array.
def unshift_element(arr, val)
  arr.unshift(val)
end
unshift_arr = [2, 3] # Output: [1, 2, 3]
p unshift_element(unshift_arr, 1)


# 16) .compact – Removes nil values from an array.
# Write a function that takes in an array and returns a new array without nil values.
def remove_nil(arr)
  arr.compact
end
nil_array = [1, nil, 2, nil, 3] # Output: [1, 2, 3]
p remove_nil(nil_array)


# 17) .slice – Retrieves a subset of an array based on a range or index.
# Write a function that slices the first 3 elements from an array.
def slice_first_three(arr)
  arr.slice(0, 3)
end
slice_array = [4, 5, 6, 7, 8] # Output: [4, 5, 6]
p slice_first_three(slice_array)


# 18) .partition – Divides an array into two arrays based on a condition.
# Write a function that partitions an array of numbers into even and odd arrays.
def partition_even_odd(arr)
  arr.partition { |num| num.even? }
end
part_arr = [1, 2, 3, 4, 5] # Output: [[2, 4], [1, 3, 5]]
p partition_even_odd(part_arr)


# 19) .combination – Generates combinations of array elements.
# Write a function that takes in an array and returns all 2-element combinations.
def two_element_combinations(arr)
  arr.combination(2).to_a
end
combo_arr = [1, 2, 3] # Output: [[1, 2], [1, 3], [2, 3]]
p two_element_combinations(combo_arr)


# 20) .permutation – Generates permutations of array elements.
# Write a function that takes in an array and returns all permutations of length 2.
def two_element_permutations(arr)
  arr.permutation(2).to_a
end
perm_arr = [1, 2, 3] # Output: [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]
p two_element_permutations(perm_arr)


# 21) .rotate – Rotates elements in the array by a given count.
# Write a function that rotates an array by 1 position to the left.
def rotate_left_by_one(arr)
  arr.rotate(1)
end
rotate_arr = [1, 2, 3, 4] # Output: [2, 3, 4, 1]
p rotate_left_by_one(rotate_arr)


# 22) .bsearch – Performs binary search on a sorted array.
# Write a function that takes in a sorted array and a target, and returns the element if found.
def binary_search(arr, target)
  arr.bsearch { |x| x >= target }
end
sorted_array = [1, 3, 5, 7, 9] # Output: 5 (when target is 5)
p binary_search(sorted_array, 5)
