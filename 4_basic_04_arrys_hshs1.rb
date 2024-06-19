# Write an array, read items from an array, and add new items to existing array


# 1. Create an array to store 3 words. Then add two more words to the array and print the array on one line.
words = ["sky", "star", "lake"]
words.push("glacier")
words.push("mountain")
p words

words = ["sky", "star", "lake"]
words[3] = "glacier"
words[4] = "mountain"
p words


# 2. Create an array to store 4 letters. Then change the second letter to a number and print the array on one line.
array = ["a", "b", "c", "d"]
array[1] = 7
p array

# 3. Create an array to store 5 numbers. Then print out each number on separate lines with a while loop.
array = [1, 2, 3, 4, 5]
index = 0
while index < array.length
  puts array[index]
  index += 1
end

# 4. Create an array to store 1 number. Then add three more numbers to the array and print the array on one line.
array = [7]
array << 10
array << 21
array << 30
pp array

arrys = [7]
arrys.push(10)
arrys.push(21)
arrys.push(30)
pp arrys

# 5. Create an array to store 3 strings with lower case letters. Then change the third string to have all capital letters and print the array on one line.
strings = ["hello", "hello", "hello"]
strings[2] = strings[2].upcase
pp strings

# 6. Create an array to store 3 names. Then print out each name on separate lines with a while loop.
names = ["John", "Tom", "Mike"]
index = 0
while index < names.length
  puts names[index]
  index += 1
end

# 7. Create an array to store 2 strings. Then add one string to the array and print the array on one line.
strings = ["Sky", "Desert"]
strings << "Glacier"
pp strings

strings = ["Sky", "Desert"]
strings.push("Glacier")
pp strings


# 8. Create an array to store 5 numbers. Then change the first number to 10 times its original value and print the array on one line.
numbers = [1, 2, 3, 4, 5]
numbers[0] = numbers[0] * 10
pp numbers

# 9. Create an array to store 2 numbers. Then print out each number on separate lines with a while loop.
numbers = [3, 10]
index = 0
while index < numbers.length
  puts numbers[index]
  index += 1
end

# 10. Create an array to store names of 3 different countries. Then add one more country and print the array one line.
countries = ["Argentina", "Peru", "Ecuador"]
countries << "Chile"
pp countries

countries = ["Argentina", "Peru", "Ecuador"]
countries.push("Chile")
pp countries



