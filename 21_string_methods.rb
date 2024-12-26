# .split
# What it does: Divides a string into an array of substrings based on a delimiter (default is whitespace).
# Why use it: Parsing text or handling user input (e.g., splitting a sentence into words).
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes a sentence and returns an array of words.
# Solution 1
def sentence_to_words(sentence)
  sentence.split(" ")
end

sentence = "Hello world from Ruby"
p sentence_to_words(sentence)
# Expected Output: ["Hello", "world", "from", "Ruby"]


# Solution 2
def sentence_to_words(sentence)
  sentence.split
end

sentence = "Hello world from Ruby"
p sentence_to_words(sentence)
# Expected Output: ["Hello", "world", "from", "Ruby"]


#------------------------------------------------------------------------------
# Problem 2: Write a function that splits a string into characters.
# Solution 1
def split_into_chars(greeting)
  greeting.split("")
end

greeting = "Hello"
p split_into_chars(greeting)
# Expected Output: ["H", "e", "l", "l", "o"]


# Solution 2
def split_into_chars(greeting)
  greeting.chars
end

greeting = "Hello"
p split_into_chars(greeting)
# Expected Output: ["H", "e", "l", "l", "o"]



# .strip or lstrip.rstrip
# What it does: Removes leading and trailing whitespace (including \n and \t) from a string.
# Why use it: Cleaning up data, such as user inputs or file reads.
#------------------------------------------------------------------------------
# Problem 1: Write a function that removes leading and trailing whitespace from a given string.
# Solution 1
def remove_whitespace(input)
  input.strip
end

input = "   hello world   "
p remove_whitespace(input)
# Expected Output: "hello world"


# Solution 2
def remove_whitespace(input)
  input.lstrip.rstrip
end

input = "   hello world   "
p remove_whitespace(input)
# Expected Output: "hello world"


#------------------------------------------------------------------------------
# Problem 2: Write a function that trims user input before storing it.
# Solution 1
def clean_input(user_input)
  user_input.strip
end

user_input = "   user123   "
p clean_input(user_input)
# Expected Output: "user123"


# Solution 2
def clean_input(user_input)
  user_input.strip
end

user_input = "\n   user123   \n"
p clean_input(user_input)
# Expected Output: "user123"



# .include?
# What it does: Checks if a given substring exists within a string.
# Why use it: Substring searches, such as detecting if "error" appears in a log message.
#------------------------------------------------------------------------------
# Problem 1: Write a function that checks if a string contains the substring "ruby".
# Solution 1
def contains_ruby?(str)
  str.include?("ruby")
end

string1 = "I love ruby programming"
string2 = "I love python programming"
p contains_ruby?(string1)  # Expected Output: true
p contains_ruby?(string2)  # Expected Output: false


#------------------------------------------------------------------------------
# Problem 2: Write a function that checks if a name is in a list of guests (comma-separated string).
# Solution 1
def guest_in_list?(guest_list, name)
  guest_list.include?(name)
end

list = "Alice,Bob,Carol"
p guest_in_list?(list, "Bob")   # Expected Output: true
p guest_in_list?(list, "David") # Expected Output: false


# Solution 2
def guest_in_list?(guest_list, name)
  guest_list.split(",").include?(name)
end

list = "Alice,Bob,Carol"
p guest_in_list?(list, "Carol") # Expected Output: true
p guest_in_list?(list, "Eve")   # Expected Output: false



# .gsub
# What it does: Replaces all occurrences of a specified pattern (which can be a string or regex) with a new string.
# Why use it: Cleaning or modifying text in bulk, like changing all spaces to underscores.
#------------------------------------------------------------------------------
# Problem 1: Write a function that replaces all spaces in a string with hyphens.
# Solution 1
def spaces_to_hyphens(str)
  str.gsub(" ", "-")
end

string = "hello world from ruby"
p spaces_to_hyphens(string)
# Expected Output: "hello-world-from-ruby"


# Solution 2
def spaces_to_hyphens(str)
  str.gsub(/\s/, "-")
end

string = "hello world from ruby"
p spaces_to_hyphens(string)
# Expected Output: "hello-world-from-ruby"


#------------------------------------------------------------------------------
# Problem 2: Write a function that removes all digits from a string.
# Solution 1
def remove_digits(str)
  str.gsub(/\d/, "")
end

test_str = "abc123def456"
p remove_digits(test_str)
# Expected Output: "abcdef"


# Solution 2
def remove_digits(str)
  str.gsub(/[0-9]/, "")
end

test_str = "abc123def456"
p remove_digits(test_str)
# Expected Output: "abcdef"



# .reverse
# What it does: Returns a new string with the characters in reverse order.
# Why use it: Reversing numbers or text.
#------------------------------------------------------------------------------
# Problem 1: Write a function that reverses a given string.
# Solution 1
def reverse_string(str)
  str.reverse
end

greeting = "Hello"
p reverse_string(greeting)
# Expected Output: "olleH"


# Solution 2
def reverse_string(str)
  reversed = ""
  str.chars.each { |char| reversed = char + reversed }
  reversed
end

greeting = "Hello"
p reverse_string(greeting)
# Expected Output: "olleH"


#------------------------------------------------------------------------------
# Problem 2: Write a function that checks if a string is a palindrome.
# Solution 1
def palindrome?(str)
  str == str.reverse
end

word = "madam"
p palindrome?(word)
# Expected Output: true


# Solution 2
def palindrome?(str)
  reversed = str.chars.reverse.join
  str == reversed
end

word = "hello"
p palindrome?(word)
# Expected Output: false
