puts
# Used for general output.
# It prints the given data followed by a newline, making it ideal for displaying readable text.

p
# Used primarily for debugging.
# It prints a more raw, detailed representation of objects, showing things like quotes and escape characters.

pp
# Short for "pretty print."
# It's used for displaying complex data structures (like arrays and hashes) in a more readable format.


Big O Notation
O(1)
Simple operations (e.g., get the first item).

O(log n)
Binary search or algorithms that halve the data each step.

O(n)
A single loop through all data (like .select or .each in Ruby).

O(n log n)
Sorting algorithms like quicksort or mergesort.

O(n²)
Nested loops (e.g., bubble sort) or checking all pairs of elements.