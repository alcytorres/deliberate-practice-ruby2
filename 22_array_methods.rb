# .push
# What it does: Adds one or more elements to the end of an array.
# Why use it: Building or expanding an array without creating a new one.
#------------------------------------------------------------------------------
# Problem 1: Write a function that adds a single element to an array.
# Solution 1
def add_element(arr, element)
  arr.push(element)
end

numbers = [1, 2, 3]
p add_element(numbers, 4)
# Expected Output: [1, 2, 3, 4]


# Solution 2
def add_element(arr, element)
  arr << element
end

numbers = [1, 2, 3]
p add_element(numbers, 4)
# Expected Output: [1, 2, 3, 4]


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
# Expected Output: [1, 2, 3, 4]


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
# Expected Output: [1, 2, 3, 4]



# .pop
# What it does: Removes and returns the last element from an array.
# Why use it: Retrieving an item from the end of the array while reducing its size.
#------------------------------------------------------------------------------
# Problem 1: Write a function that removes the last element from an array and returns it.
# Solution 1
def remove_last(arr)
  arr.pop
end

numbers = [1, 2, 3]
p remove_last(numbers)
# Expected Output: 3
p numbers
# Expected Output: [1, 2]


#------------------------------------------------------------------------------
# Problem 2: Write a function that repeatedly pops elements from an array until it's empty, returning them in a new array.
# Solution 1
def pop_all(arr)
  popped = []
  popped << arr.pop while arr.any?
  popped
end

nums = [5, 6, 7]
p pop_all(nums)
# Expected Output: [7, 6, 5]



# .join
# What it does: Combines all elements of an array into a single string, optionally separated by a chosen delimiter (e.g., "-", ",", etc.).
# Why use it: Ideal for creating strings from lists, such as generating a sentence or producing CSV data.
#------------------------------------------------------------------------------
# Problem 1: Write a function that converts an array of words into a single string separated by spaces.
# Solution 1
def words_to_sentence(words)
  words.join(" ")
end

arr_words = ["Hello", "world", "from", "Ruby"]
p words_to_sentence(arr_words)
# Expected Output: "Hello world from Ruby"


#------------------------------------------------------------------------------
# Problem 2: Write a function that converts an array of characters into a single string without spaces.
# Solution 1
def chars_to_string(chars)
  chars.join
end

letters = ["a", "b", "c"]
p chars_to_string(letters)
# Expected Output: "abc"



# .sort
# What it does: Returns a new array with the elements sorted in ascending order by default.
# Why use it: Organizing data in a meaningful order, such as numerically or alphabetically.
#------------------------------------------------------------------------------
# Problem 1: Write a function that sorts an array of numbers in ascending order.
# Solution 1
def sort_ascending(numbers)
  numbers.sort
end

nums = [5, 2, 8, 1, 3]
p sort_ascending(nums)
# Expected Output: [1, 2, 3, 5, 8]


# Solution 2
def sort_ascending(numbers)
  numbers.sort_by { |num| num }
end

nums = [5, 2, 8, 1, 3]
p sort_ascending(nums)
# Expected Output: [1, 2, 3, 5, 8]


#------------------------------------------------------------------------------
# Problem 2: Write a function that sorts an array of strings in alphabetical order.
# Solution 1
def sort_alphabetical(words)
  words.sort
end

word_list = ["banana", "apple", "cherry"]
p sort_alphabetical(word_list)
# Expected Output: ["apple", "banana", "cherry"]


# Solution 2
def sort_alphabetical(words)
  words.sort_by { |word| word }
end

word_list = ["delta", "alpha", "charlie", "beta"]
p sort_alphabetical(word_list)
# Expected Output: ["alpha", "beta", "charlie", "delta"]



# .uniq
# What it does: Returns a new array by removing duplicate elements.
# Why use it: Filtering out repeats to get unique values from a collection.
#------------------------------------------------------------------------------
# Problem 1: Write a function that removes duplicates from an array of numbers.
# Solution 1
def remove_duplicates(numbers)
  numbers.uniq
end

nums = [1, 2, 2, 3, 3, 3]
p remove_duplicates(nums)
# Expected Output: [1, 2, 3]


# Solution 2
def remove_duplicates(numbers)
  unique_nums = []
  numbers.each { |num| unique_nums << num unless unique_nums.include?(num) }
  unique_nums
end

nums = [4, 4, 5, 6, 6, 7]
p remove_duplicates(nums)
# Expected Output: [4, 5, 6, 7]


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the count of unique elements in an array.
# Solution 1
def count_unique_elements(array)
  array.uniq.size
end

arr = [1, 1, 2, 3, 2, 4]
p count_unique_elements(arr)
# Expected Output: 4


# Solution 2
def count_unique_elements(array)
  unique = []
  array.each { |elem| unique << elem unless unique.include?(elem) }
  unique.count
end

arr = [10, 10, 20, 20, 30, 30, 40]
p count_unique_elements(arr)
# Expected Output: 4



# .flatten
# What it does: Converts a multi-dimensional array into a one-dimensional array.
# Why use it: Simplifies nested structures, making data easier to process in a single loop.
#------------------------------------------------------------------------------
# Problem 1: Write a function that flattens a 2D array into a 1D array.
# Solution 1
def flatten_2d(array)
  array.flatten
end

arr_2d = [[1, 2], [3, 4]]
p flatten_2d(arr_2d)
# Expected Output: [1, 2, 3, 4]


# Solution 2
def flatten_2d(array)
  result = []
  array.each do |sub_array|
    sub_array.each { |elem| result << elem }
  end
  result
end

arr_2d = [[5, 6], [7, 8]]
p flatten_2d(arr_2d)
# Expected Output: [5, 6, 7, 8]


#------------------------------------------------------------------------------
# Problem 2: Write a function that flattens a nested array of any depth.
# Solution 1
def flatten_any_depth(array)
  array.flatten
end

nested_array = [1, [2, [3, [4]]]]
p flatten_any_depth(nested_array)
# Expected Output: [1, 2, 3, 4]



