#------------------------------------------------------------------------------
# Problem 1: Write a function that takes a sentence and returns an array of words.

def sentence_to_words(sentence)
  sentence.split(" ")
end

sentence = "Hello world from Ruby"
p sentence_to_words(sentence)
# Output: ["Hello", "world", "from", "Ruby"]



# # Solution 1
# def sentence_to_words(sentence)
#   sentence.split(" ")
# end

# sentence = "Hello world from Ruby"
# p sentence_to_words(sentence)
# # Output: ["Hello", "world", "from", "Ruby"]


# # Solution 2
# def sentence_to_words(sentence)
#   sentence.split("-")
# end

# sentence = "Hello-world-from-Ruby"
# p sentence_to_words(sentence)
# # Output: ["Hello", "world", "from", "Ruby"]


#------------------------------------------------------------------------------
# Problem 2: Write a function that splits a string into characters.

def split_into_chars(greeting)
  greeting.split("")
end

greeting = "Hello"
p split_into_chars(greeting)
# Output: ["H", "e", "l", "l", "o"]



# # Solution
# def split_into_chars(greeting)
#   greeting.split("")
# end

# greeting = "Hello"
# p split_into_chars(greeting)
# # Output: ["H", "e", "l", "l", "o"]



#------------------------------------------------------------------------------
# Problem 1: Write a function that removes leading and trailing whitespace from a given string.

def remove_whitespace(input)
  input.strip
end

input = "   hello world   "
p remove_whitespace(input)
# Output: "hello world"



# # Solution 1
# def remove_whitespace(input)
#   input.strip
# end

# input = "   hello world   "
# p remove_whitespace(input)
# # Output: "hello world"


# # Solution 2
# def remove_whitespace(input)
#   input.lstrip.rstrip
# end

# input = "   hello world   "
# p remove_whitespace(input)
# # Output: "hello world"



#------------------------------------------------------------------------------
# Problem 1: Write a function that checks if a string contains the substring "ruby".

def contains_ruby?(str)
  str.include?("ruby")
end

string1 = "I love ruby programming"
string2 = "I love python programming"
p contains_ruby?(string1)
# Output: true
p contains_ruby?(string2)
# Output: false



# # Solution 1
# def contains_ruby?(str)
#   str.include?("ruby")
# end

# string1 = "I love ruby programming"
# string2 = "I love python programming"
# p contains_ruby?(string1)
# # Output: true
# p contains_ruby?(string2)
# # Output: false



#------------------------------------------------------------------------------
# Problem 2: Write a function that checks if a name is in a list of guests (comma-separated string).

def guest_in_list?(guest_list, name)
  guest_list.include?(name)
end

list = "Alice,Bob,Carol"
p guest_in_list?(list, "Bob")
# Output: true
p guest_in_list?(list, "David")
# Output: false



# # Solution 1
# def guest_in_list?(guest_list, name)
#   guest_list.include?(name)
# end

# list = "Alice,Bob,Carol"
# p guest_in_list?(list, "Bob")
# # Output: true
# p guest_in_list?(list, "David")
# # Output: false



#------------------------------------------------------------------------------
# Problem 1: Write a function that replaces all spaces in a string with hyphens.

def spaces_to_hyphens(str)
  str.gsub(" ", "-")
end

string = "hello world from ruby"
p spaces_to_hyphens(string)
# Output: "hello-world-from-ruby"



# # Solution
# def spaces_to_hyphens(str)
#   str.gsub(" ", "-")
# end

# string = "hello world from ruby"
# p spaces_to_hyphens(string)
# # Output: "hello-world-from-ruby"



#------------------------------------------------------------------------------
# Problem 2: Write a function that replaces all spaces in a string with hyphens.

def spaces_to_hyphens(str)
  str.gsub(/\s/, "-")
end

string = "hello world from ruby"
p spaces_to_hyphens(string)
# Output: "hello-world-from-ruby"



# # Solution
# def spaces_to_hyphens(str)
#   str.gsub(/\s/, "-")
# end

# string = "hello world from ruby"
# p spaces_to_hyphens(string)
# # Output: "hello-world-from-ruby"

#------------------------------------------------------------------------------
# Problem 3: Write a function that replaces all	spaces, tabs, newlines in a string with hyphens.

def spaces_to_hyphens(str)
  str.gsub(/\s/, "-")
end

string = "hello\tworld\nfrom ruby"
puts spaces_to_hyphens(string)
# Output: "hello-world-from-ruby"



# # Solution
# def spaces_to_hyphens(str)
#   str.gsub(/\s/, "-")
# end

# string = "hello\tworld\nfrom ruby"
# p spaces_to_hyphens(string)
# # Output: "hello-world-from-ruby"


#------------------------------------------------------------------------------
# Problem 3.1: Write a function that prints a string with	spaces, tabs, and newlines as a string.

def print(string)
  return string
end

string = "hello\tworld\nfrom ruby"
# puts string

# Output
# hello   world
# from ruby


#------------------------------------------------------------------------------
# Problem 4: Write a function that removes all digits from a string.

def remove_digits(str)
  str.gsub(/\d/, "")
end

test_str = "abc123def456"
p remove_digits(test_str)
# Output: "abcdef"



# # Solution 1
# def remove_digits(str)
#   str.gsub(/\d/, "")
# end

# test_str = "abc123def456"
# p remove_digits(test_str)
# # Output: "abcdef"


# # Solution 2
# def remove_digits(str)
#   str.gsub(/[0-9]/, "")
# end

# test_str = "abc123def456"
# p remove_digits(test_str)
# # Output: "abcdef"



#------------------------------------------------------------------------------
# Problem 1: Write a function that reverses a given string.

def reverse_string(str)
  str.reverse
end

greeting = "Hello"
p reverse_string(greeting)
# Output: "olleH"



# # Solution 1
# def reverse_string(str)
#   str.reverse
# end

# greeting = "Hello"
# p reverse_string(greeting)
# # Output: "olleH"



#------------------------------------------------------------------------------
# Problem 1: Write a function that checks if a string starts with "hello" and ends with "bye" using .start_with? / .end_with?.

def start_hello_end_bye?(str)
  str.start_with?("hello") && str.end_with?("bye")
end

test_str = "hello something bye"
p start_hello_end_bye?(test_str)
# Output: true


# # Solution 1
# def start_hello_end_bye?(str)
#   str.start_with?("hello") && str.end_with?("bye")
# end

# test_str = "hello something bye"
# p start_hello_end_bye?(test_str)
# # Output: true


#------------------------------------------------------------------------------
# Problem 1: Write a function that converts a string to uppercase using .upcase.

def shout(str)
  str.upcase
end

phrase = "hello world"
p shout(phrase)



# # Solution
# def shout(str)
#   str.upcase
# end

# phrase = "hello world"
# p shout(phrase)
# # Output: "HELLO WORLD"



#------------------------------------------------------------------------------
# Problem 1: Write a function that converts a string to lowercase using .downcase.

def whisper(str)
  str.downcase
end

loud_phrase = "HELLO WORLD"
p whisper(loud_phrase)
# Output: "hello world"



# # Solution
# def whisper(str)
#   str.downcase
# end

# loud_phrase = "HELLO WORLD"
# p whisper(loud_phrase)
# # Output: "hello world"



#------------------------------------------------------------------------------
# Problem 1: Write a function that capitalizes the first character of a string using .capitalize.

def capitalize_first(str)
  str.capitalize
end

title = "hello"
p capitalize_first(title)



# # Solution
# def capitalize_first(str)
#   str.capitalize
# end

# title = "hello"
# p capitalize_first(title)
# # Output: "Hello"



#------------------------------------------------------------------------------
# Problem 1: Write a function that checks if a string contains a number

def contains_number?(str)
  str.match(/\d/)
end

p contains_number?("hello")
# Output: nil (no match)
p contains_number?("hello123")
# Output: #<MatchData "1"> (match found)


# # Solution
# def contains_number?(str)
#   str.match(/\d/)
# end

# p contains_number?("hello")
# # Output: nil (no match)
# p contains_number?("hello123")
# # Output: #<MatchData "1"> (match found)


#------------------------------------------------------------------------------
# Problem 2: Write a function that checks if a string matches a simple pattern (digits only) using .match.
def digits_only?(str)
  !!str.match(/^\d+$/)
end

num_str = "12345"
p digits_only?(num_str)
# Output: true



# # Solution
# def digits_only?(str)
#   !!str.match(/^\d+$/)
# end

# num_str = "12345"
# p digits_only?(num_str)
# # Output: true



#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in a string and returns an array of its characters using .chars.

def string_to_chars(str)
  str.chars
end

greeting = "hi"
p string_to_chars(greeting)
# Output: ["h", "i"]


# # Solution 1
# def string_to_chars(str)
#   str.chars
# end

# greeting = "hi"
# p string_to_chars(greeting)
# # Output: ["h", "i"]



#------------------------------------------------------------------------------
# Problem 1: Write a function that removes all vowels from a string using .delete.

def remove_vowels(str)
  str.delete("aeiouAEIOU")
end

vowel_string = "banana"
p remove_vowels(vowel_string)
# Output: "bnn"



# # Solution 1
# def remove_vowels(str)
#   str.delete("aeiouAEIOU")
# end

# vowel_string = "banana"
# p remove_vowels(vowel_string)
# # Output: "bnn"



#------------------------------------------------------------------------------
# Problem 1: Write a function that replaces all 'a' characters with 'z' using .tr.

def swap_a_for_z(str)
  str.tr("a", "z")
end

text = "banana"
p swap_a_for_z(text)
# Output: "bznznz"


# # Solution 1
# def swap_a_for_z(str)
#   str.tr("a", "z")
# end

# text = "banana"
# p swap_a_for_z(text)
# # Output: "bznznz"

# # Solution 2
# def swap_a_for_z(str)
#   str.gsub("a", "z")
# end

# text = "banana"
# p swap_a_for_z(text)
# # Output: "bznznz"


#------------------------------------------------------------------------------
# Problem 1: Write a function that finds all words in a string that start with "b" using .scan.

def words_starting_with_b(str)
  str.scan(/\bb\w*/)
end

sentence = "banana and berry are both fruits"
p words_starting_with_b(sentence)
# Output: ["banana", "berry", "both"]



# # Solution 1
# def words_starting_with_b(str)
#   str.scan(/\bb\w*/)
# end
# sentence = "banana and berry are both fruits"
# p words_starting_with_b(sentence)
# # Output: ["banana", "berry", "both"]



#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the length of a given string using .length (or .size).

def string_length(str)
  str.length
end

long_word = "supercalifragilistic"
p string_length(long_word)
# Output: 20



# # Solution 1
# def string_length(str)
#   str.length
# end

# long_word = "supercalifragilistic"
# p string_length(long_word)
# # Output: 20



#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the ASCII value of the first character in a string using .ord,
# and then returns that character again using .chr.

def first_char_ord_and_chr(str)
  first_char = str[0]
  [first_char.ord, first_char.ord.chr]
end

example_str = "Hello"
p first_char_ord_and_chr(example_str)
# Output: [72, "H"]



# # Solution
# def first_char_ord_and_chr(str)
#   first_char = str[0]
#   [first_char.ord, first_char.ord.chr]
# end

# example_str = "Hello"
# p first_char_ord_and_chr(example_str)
# # Output: [72, "H"]



#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the "next" string value using .succ (e.g., "abc" → "abd").

def next_string_value(str)
  str.succ
end

alpha = "abc"
p next_string_value(alpha)
# Output: "abd"



# # Solution
# def next_string_value(str)
#   str.succ
# end

# alpha = "abc"
# p next_string_value(alpha)
# # Output: "abd"








