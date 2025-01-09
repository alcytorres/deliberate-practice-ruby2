split
# What it does: Divides a string into an array of substrings based on a delimiter (default is whitespace).
# Why use it: Parsing text or handling user input (e.g., splitting a sentence into words).
# A delimiter is a character or sequence of characters used to specify where to split a string into smaller parts.

# Syntax:
string.split("delimiter")
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes a sentence and returns an array of words.
# Solution 1
def sentence_to_words(sentence)
  sentence.split(" ")
end

sentence = "Hello world from Ruby"
p sentence_to_words(sentence)
# Output: ["Hello", "world", "from", "Ruby"]


# Solution 2
def sentence_to_words(sentence)
  sentence.split("-")
end

sentence = "Hello-world-from-Ruby"
p sentence_to_words(sentence)
# Output: ["Hello", "world", "from", "Ruby"]


#------------------------------------------------------------------------------
# Problem 2: Write a function that splits a string into characters.
# Solution 1
def split_into_chars(greeting)
  greeting.split("")
end

greeting = "Hello"
p split_into_chars(greeting)
# Output: ["H", "e", "l", "l", "o"]

#------------------------------------------------------------------------------
# More split examples

# Default Delimiter (Whitespace):
"Hello world!".split
# Output: ["Hello", "world!"]

# Custom Delimiter (Comma):
"apple,banana,cherry".split(",")
# Output: ["apple", "banana", "cherry"]

# Custom Delimiter (Dash):
"ruby-is-fun".split("-")
# Output: ["ruby", "is", "fun"]

# Empty String Delimiter (Split by Characters):
"abc".split("")
# Output: ["a", "b", "c"]

# No Matches (String Remains as is):
"hello".split(",")
# Output: ["hello"]

# Handling Multiple Spaces:
"  Hello   world  ".split
# Output: ["Hello", "world"]





strip or lstrip.rstrip
# What it does: Removes leading and trailing whitespace (including \n and \t) from a string.
# Why use it: Cleaning up data, such as user inputs or file reads.

# Syntax:
string.strip
#------------------------------------------------------------------------------
# Problem 1: Write a function that removes leading and trailing whitespace from a given string.
# Solution 1
def remove_whitespace(input)
  input.strip
end

input = "   hello world   "
p remove_whitespace(input)
# Output: "hello world"


# Solution 2
def remove_whitespace(input)
  input.lstrip.rstrip
end

input = "   hello world   "
p remove_whitespace(input)
# Output: "hello world"



include?
# What it does: Checks if a given substring exists within a string.
# Why use it: Substring searches, such as detecting if "error" appears in a log message.

# Syntax:
string.include?("substring")
#------------------------------------------------------------------------------
# Problem 1: Write a function that checks if a string contains the substring "ruby".
# Solution 1
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
# Problem 2: Write a function that checks if a name is in a list of guests (comma-separated string).
# Solution 1
def guest_in_list?(guest_list, name)
  guest_list.include?(name)
end

list = "Alice,Bob,Carol"
p guest_in_list?(list, "Bob")
# Output: true
p guest_in_list?(list, "David")
# Output: false



gsub
# What it does: Replaces all occurrences of a specified pattern (which can be a string or regex) with a new string.
# Why use it: Cleaning or modifying text in bulk, like changing all spaces to underscores.

# Syntax:
string.gsub(/pattern/, "replacement")
# or
string.gsub("old_text", "new_text")
#------------------------------------------------------------------------------
# Problem 1: Write a function that replaces all spaces in a string with hyphens.
# Solution
def spaces_to_hyphens(str)
  str.gsub(" ", "-")
end

string = "hello world from ruby"
p spaces_to_hyphens(string)
# Output: "hello-world-from-ruby"



#------------------------------------------------------------------------------
# Problem 2: Write a function that replaces all	spaces, tabs, newlines in a string with hyphens.
# Solution
def spaces_to_hyphens(str)
  str.gsub(/\s/, "-")
end

string = "hello\tworld\nfrom ruby"
p spaces_to_hyphens(string)
# Output: "hello-world-from-ruby"


# What does \s Match?
# \s is shorthand for:
Spaces (" ")
Tabs ("\t")
Newlines ("\n")
Other less common whitespace characters.


#------------------------------------------------------------------------------
# Problem 3: Write a function that removes all digits from a string.
# Solution 1
def remove_digits(str)
  str.gsub(/\d/, "")
end

test_str = "abc123def456"
p remove_digits(test_str)
# Output: "abcdef"


# Solution 2
def remove_digits(str)
  str.gsub(/[0-9]/, "")
end

test_str = "abc123def456"
p remove_digits(test_str)
# Output: "abcdef"



reverse
# What it does: Returns a new string with the characters in reverse order.
# Why use it: Reversing numbers or text.

# Syntax:
string.reverse
#------------------------------------------------------------------------------
# Problem 1: Write a function that reverses a given string.
# Solution 1
def reverse_string(str)
  str.reverse
end

greeting = "Hello"
p reverse_string(greeting)
# Output: "olleH"



.start_with? / .end_with?
# What they do: Check if a string begins (start_with?) or ends (end_with?) with a specified substring.
# Why use them: Useful for validating string prefixes or suffixes.

# Syntax:
string.start_with?("prefix")
string.end_with?("suffix")
#------------------------------------------------------------------------------
# Problem 1: Write a function that checks if a string starts with "hello" and ends with "bye" using .start_with? / .end_with?.
def start_hello_end_bye?(str)
  str.start_with?("hello") && str.end_with?("bye")
end
test_str = "hello something bye"
p start_hello_end_bye?(test_str)
# Output: true


upcase
# What it does: Converts all characters in a string to uppercase.
# Why use it: Formatting output or ensuring consistency in case.

# Syntax:
string.upcase
#------------------------------------------------------------------------------
# Problem 1: Write a function that converts a string to uppercase using .upcase.
def shout(str)
  str.upcase
end
phrase = "hello world"
p shout(phrase)
# Output: "HELLO WORLD"



downcase
# What it does: Converts all characters in a string to lowercase.
# Why use it: Standardizing input or output text.

# Syntax:
string.downcase
#------------------------------------------------------------------------------
# Problem 1: Write a function that converts a string to lowercase using .downcase.
def whisper(str)
  str.downcase
end
loud_phrase = "HELLO WORLD"
p whisper(loud_phrase)
# Output: "hello world"


capitalize
# What it does: Capitalizes the first character of a string and downcases the rest.
# Why use it: Often used for formatting titles, names, or standardized outputs.

# Syntax:
string.capitalize
#------------------------------------------------------------------------------
# Problem 1: Write a function that capitalizes the first character of a string using .capitalize.
def capitalize_first(str)
  str.capitalize
end
title = "hello"
p capitalize_first(title)
# Output: "Hello"


match
# What it does: Matches the string against a given regular expression and returns a MatchData object or nil.
# Why use it: Extract information using regex or check for pattern validity.

# Syntax:
string.match(/pattern/)
#------------------------------------------------------------------------------
# Problem 1: Write a function that checks if a string contains a number
def contains_number?(str)
  str.match(/\d/)
end

# Example usage:
p contains_number?("hello")
# Output: nil (no match)
p contains_number?("hello123")
# Output: #<MatchData "1"> (match found)


#------------------------------------------------------------------------------
# Problem 2: Write a function that checks if a string matches a simple pattern (digits only) using .match.
def digits_only?(str)
  !!str.match(/^\d+$/)
end

num_str = "12345"
p digits_only?(num_str)
# Output: true



chars
# What it does: Splits a string into an array of individual characters.
# Why use it: Easier manipulation of each character, such as looping or transforming.

# Syntax:
string.chars
#------------------------------------------------------------------------------
# Problem 1: Write a function that takes in a string and returns an array of its characters using .chars.
def string_to_chars(str)
  str.chars
end
greeting = "hi"
p string_to_chars(greeting)
# Output: ["h", "i"]


delete
# What it does: Removes all occurrences of specified characters from a string.
# Why use it: Quickly strip out unwanted characters or symbols.

# Syntax:
string.delete("chars_to_remove")
#------------------------------------------------------------------------------
# Problem 1: Write a function that removes all vowels from a string using .delete.
def remove_vowels(str)
  str.delete("aeiouAEIOU")
end
vowel_string = "banana"
p remove_vowels(vowel_string)
# Output: "bnn"


tr
# What it does: Translates (replaces) each character from the first set to the corresponding character in the second set.
# Why use it: Useful for character-by-character conversions, like ROT13.

# Syntax:
string.tr("abc", "xyz")
#------------------------------------------------------------------------------
# Problem 1: Write a function that replaces all 'a' characters with 'z' using .tr.
def swap_a_for_z(str)
  str.tr("a", "z")
end
text = "banana"
p swap_a_for_z(text)
# Output: "bznznz"



scan
# What it does: Finds all occurrences of a pattern and returns them in an array.
# Why use it: Extract multiple pieces of data that match a regex from a string.

# Syntax:
string.scan(/pattern/)
#------------------------------------------------------------------------------
# Problem 1: Write a function that finds all words in a string that start with "b" using .scan.
def words_starting_with_b(str)
  str.scan(/\bb\w*/)
end
sentence = "banana and berry are both fruits"
p words_starting_with_b(sentence)
# Output: ["banana", "berry", "both"]



.length / .size
# What they do: Return the number of characters in a string.
# Why use them: Quickly determine a string's length for validation or looping.

# Syntax:
string.length
string.size
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the length of a given string using .length (or .size).
def string_length(str)
  str.length
end
long_word = "supercalifragilistic"
p string_length(long_word)
# Output: 20



.ord / .chr
# What they do: .ord converts a character to its ASCII value, and .chr does the reverse.
# Why use them: Converting between numeric codes and characters (e.g., encryption, character arithmetic).

# Syntax:
"a".ord  # → 97
97.chr   # → "a"
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



succ
# What it does: Returns the "next" string, incrementing characters (e.g., "a" → "b", "z" → "aa").
# Why use it: Handy for generating sequences or iterating through alphabetical or numeric ranges.

# Syntax:
string.succ
#------------------------------------------------------------------------------
# Problem 1: Write a function that returns the "next" string value using .succ (e.g., "abc" → "abd").
def next_string_value(str)
  str.succ
end
alpha = "abc"
p next_string_value(alpha)
# Output: "abd"








