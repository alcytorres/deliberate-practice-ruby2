# Problem 1: Write a function that takes in an array of arrays and returns a single flattened array with each element doubled?

def double_flatten(array_of_arrays)
  array_of_arrays.flat_map {|array| array}
  # The outer flat_map combines and flattens the array into one.
  # The inner map doubles each element in the subarrays.
end

arrays = [[1, 2], [3, 4]]
p double_flatten(arrays)
# Output: [2, 4, 6, 8]