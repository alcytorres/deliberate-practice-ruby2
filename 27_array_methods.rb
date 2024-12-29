# push
#------------------------------------------------------------------------------
# Problem 1: Write a function that adds a single element to an array.
# Solution 1
def add_element(arr, element)
  arr.push(element)
end

numbers = [1, 2, 3]
p add_element(numbers, 4)
# Output: [1, 2, 3, 4]


# Solution 2
def add_element(arr, element)
  arr << element
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



# pop
#------------------------------------------------------------------------------
# Problem 1: Write a function that removes the last element from an array and returns it.
# Solution 1
def remove_last(arr)
  arr.pop
end

numbers = [1, 2, 3]
p remove_last(numbers)
# Output: 3
p numbers
# Output: [1, 2]


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
# Output: [7, 6, 5]



# join
#------------------------------------------------------------------------------
# Problem 1: Write a function that converts an array of words into a single string separated by spaces.
# Solution 1
def words_to_sentence(words)
  words.join(" ")
end

arr_words = ["Hello", "world", "from", "Ruby"]
p words_to_sentence(arr_words)
# Output: "Hello world from Ruby"


#------------------------------------------------------------------------------
# Problem 2: Write a function that converts an array of characters into a single string without spaces.
# Solution 1
def chars_to_string(chars)
  chars.join
end

letters = ["a", "b", "c"]
p chars_to_string(letters)
# Output: "abc"



# sort
#------------------------------------------------------------------------------
# Problem 1: Write a function that sorts an array of numbers in ascending order.
# Solution 1
def sort_ascending(numbers)
  numbers.sort
end

nums = [5, 2, 8, 1, 3]
p sort_ascending(nums)
# Output: [1, 2, 3, 5, 8]


# Solution 2
def sort_ascending(numbers)
  numbers.sort_by { |num| num }
end

nums = [5, 2, 8, 1, 3]
p sort_ascending(nums)
# Output: [1, 2, 3, 5, 8]


#------------------------------------------------------------------------------
# Problem 2: Write a function that sorts an array of strings in alphabetical order.
# Solution 1
def sort_alphabetical(words)
  words.sort
end

word_list = ["banana", "apple", "cherry"]
p sort_alphabetical(word_list)
# Output: ["apple", "banana", "cherry"]



# include?
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and a value, then pushes the value to the end of the array.
def nums_array(arr, val)
  arr.include?(val)
end
numbers = [1, 2, 3]
p nums_array(numbers, 2)
# Output: true



# .index / .rindex
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and a value, returning [first_index, last_index] of that value.
def find_first_and_last_index(arr, val)
  [arr.index(val), arr.rindex(val)]
end
example_arr = [4, 5, 6, 5, 7]
p find_first_and_last_index(example_arr, 5)
# Output: [1, 3]


# find_index
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the index of the first odd number in an array.
def index_of_first_odd(arr)
  arr.find_index { |num| num.odd? }
end
mixed_numbers = [2, 4, 6, 7, 9]
p index_of_first_odd(mixed_numbers)
# Output: 3 (index of 7)


.max / .min
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns both the max and min values from an array.
def find_extremes(arr)
  [arr.max, arr.min]
end
range_array = [2, 8, 1, 10, 5]
p find_extremes(range_array)
# Output: [10, 1]


uniq
#------------------------------------------------------------------------------
# Problem 1: Write a function that removes duplicates from an array of numbers.
# Solution 1
def remove_duplicates(numbers)
  numbers.uniq
end

nums = [1, 2, 2, 3, 3, 3]
p remove_duplicates(nums)
# Output: [1, 2, 3]


#------------------------------------------------------------------------------
# Problem 2: Write a function that returns the count of unique elements in an array.
# Solution 1
def count_unique_elements(array)
  array.uniq.size
end

arr = [1, 1, 2, 3, 2, 4]
p count_unique_elements(arr)
# Output: 4




first
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns its first element.
def first_element(arr)
  arr.first
end
sample_array = [10, 20, 30]
p first_element(sample_array)
# Output: 10


last
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns its last element.
def last_element(arr)
  arr.last
end
nums_array = [4, 5, 6]
p last_element(nums_array)
# Output: 6


flatten
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



sample
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns a random element from an array.
def random_element(arr)
  arr.sample
end
random_nums = [10, 20, 30, 40]
p random_element(random_nums)
# Output: (random element)


shift
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and removes its first element, returning the removed element.
def shift_element(arr)
  arr.shift
end
shift_arr = [7, 8, 9]
p shift_element(shift_arr) # Output: 7
p shift_arr # Output Now: [8, 9]



unshift
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and a value, and unshifts the value to the front of the array.
def unshift_element(arr, val)
  arr.unshift(val)
end
unshift_arr = [2, 3]
p unshift_element(unshift_arr, 1)



compact
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns a new array without nil values.
def remove_nil(arr)
  arr.compact
end
nil_array = [1, nil, 2, nil, 3]
p remove_nil(nil_array)
# Output: [1, 2, 3]


slice
#------------------------------------------------------------------------------
# Problem 1: Write a function that slices the first 3 elements from an array.
def slice_first_three(arr)
  arr.slice(0, 3)
end
slice_array = [4, 5, 6, 7, 8]
p slice_first_three(slice_array)
# Output: [4, 5, 6]



partition
#------------------------------------------------------------------------------
# Problem 1: Write a function that partitions an array of numbers into even and odd arrays.
def partition_even_odd(arr)
  arr.partition { |num| num.even? }
end
part_arr = [1, 2, 3, 4, 5]
p partition_even_odd(part_arr)
# Output: [[2, 4], [1, 3, 5]]


combination
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns all 2-element combinations.
def two_element_combinations(arr)
  arr.combination(2).to_a
end
combo_arr = [1, 2, 3]
p two_element_combinations(combo_arr)
# Output: [[1, 2], [1, 3], [2, 3]]


permutation
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in an array and returns all permutations of length 2.
def two_element_permutations(arr)
  arr.permutation(2).to_a
end
perm_arr = [1, 2, 3]
p two_element_permutations(perm_arr)
# Output: [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]


rotate
#------------------------------------------------------------------------------
# Problem 1: Write a function that rotates an array by 1 position to the left.
def rotate_left_by_one(arr)
  arr.rotate(1)
end
rotate_arr = [1, 2, 3, 4]
p rotate_left_by_one(rotate_arr)
# Output: [2, 3, 4, 1]



bsearch
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in a sorted array and a target, and returns the element if found.
def binary_search(arr, target)
  arr.bsearch { |x| x >= target }
end
sorted_array = [1, 3, 5, 7, 9]
p binary_search(sorted_array, 5)
# Output: 5 (when target is 5)
