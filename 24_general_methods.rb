.start_with? / .end_with?
# What they do: Check if a string begins (start_with?) or ends (end_with?) with a specified substring.
# Why use them: Useful for validating string prefixes or suffixes.

# Syntax:
string.start_with?("prefix")
string.end_with?("suffix")


upcase
# What it does: Converts all characters in a string to uppercase.
# Why use it: Formatting output or ensuring consistency in case.

# Syntax:
string.upcase


downcase
# What it does: Converts all characters in a string to lowercase.
# Why use it: Standardizing input or output text.

# Syntax:
string.downcase


capitalize
# What it does: Capitalizes the first character of a string and downcases the rest.
# Why use it: Often used for formatting titles, names, or standardized outputs.

# Syntax:
string.capitalize


match
# What it does: Matches the string against a given regular expression and returns a MatchData object or nil.
# Why use it: Extract information using regex or check for pattern validity.

# Syntax:
string.match(/pattern/)


chars
# What it does: Splits a string into an array of individual characters.
# Why use it: Easier manipulation of each character, such as looping or transforming.

# Syntax:
string.chars


delete
# What it does: Removes all occurrences of specified characters from a string.
# Why use it: Quickly strip out unwanted characters or symbols.

# Syntax:
string.delete("chars_to_remove")


tr
# What it does: Translates (replaces) each character from the first set to the corresponding character in the second set.
# Why use it: Useful for character-by-character conversions, like ROT13.

# Syntax:
string.tr("abc", "xyz")


scan
# What it does: Finds all occurrences of a pattern and returns them in an array.
# Why use it: Extract multiple pieces of data that match a regex from a string.

# Syntax:
string.scan(/pattern/)


.length / .size
# What they do: Return the number of characters in a string.
# Why use them: Quickly determine a string's length for validation or looping.

# Syntax:
string.length
string.size


.ord / .chr
# What they do: .ord converts a character to its ASCII value, and .chr does the reverse.
# Why use them: Converting between numeric codes and characters (e.g., encryption, character arithmetic).

# Syntax:
"a".ord  # → 97
97.chr   # → "a"


succ
# What it does: Returns the "next" string, incrementing characters (e.g., "a" → "b", "z" → "aa").
# Why use it: Handy for generating sequences or iterating through alphabetical or numeric ranges.

# Syntax:
string.succ







# .split
# What it does: Splits a string into an array of substrings based on a delimiter.
# Why use it: Handy for breaking a string into separate words or sections.

# Syntax:
string.split("delimiter")


# .strip
# What it does: Removes whitespace (spaces, tabs, etc.) from the start and end of a string.
# Why use it: Useful for cleaning up user input or extra spacing.

# Syntax:
string.strip


# .include?
# What it does: Checks if a substring exists within a string.
# Why use it: Quickly verify if a piece of text is present.

# Syntax:
string.include?("substring")


# .gsub
# What it does: Substitutes all occurrences of a pattern or substring with a given replacement.
# Why use it: Efficiently replace characters or words throughout a string.

# Syntax:
string.gsub(/pattern/, "replacement")
# or
string.gsub("old_text", "new_text")


# .reverse
# What it does: Reverses the order of all characters in a string.
# Why use it: Commonly used for palindrome checks or reversing text outputs.

# Syntax:
string.reverse


# .start_with? / .end_with?
# What they do: Check if a string begins (start_with?) or ends (end_with?) with a specified substring.
# Why use them: Useful for validating string prefixes or suffixes.

# Syntax:
string.start_with?("prefix")
string.end_with?("suffix")


.upcase
# What it does: Converts all characters in a string to uppercase.
# Why use it: Formatting output or ensuring consistency in case.

# Syntax:
string.upcase


# .downcase
# What it does: Converts all characters in a string to lowercase.
# Why use it: Standardizing input or output text.

# Syntax:
string.downcase


# .capitalize
# What it does: Capitalizes the first character of a string and downcases the rest.
# Why use it: Often used for formatting titles, names, or standardized outputs.

# Syntax:
string.capitalize


# .match
# What it does: Matches the string against a given regular expression and returns a MatchData object or nil.
# Why use it: Extract information using regex or check for pattern validity.

# Syntax:
string.match(/pattern/)


# .chars
# What it does: Splits a string into an array of individual characters.
# Why use it: Easier manipulation of each character, such as looping or transforming.

# Syntax:
string.chars


# .delete
# What it does: Removes all occurrences of specified characters from a string.
# Why use it: Quickly strip out unwanted characters or symbols.

# Syntax:
string.delete("chars_to_remove")


# .tr
# What it does: Translates (replaces) each character from the first set to the corresponding character in the second set.
# Why use it: Useful for character-by-character conversions, like ROT13.

# Syntax:
string.tr("abc", "xyz")


# .scan
# What it does: Finds all occurrences of a pattern and returns them in an array.
# Why use it: Extract multiple pieces of data that match a regex from a string.

# Syntax:
string.scan(/pattern/)


# .length / .size
# What they do: Return the number of characters in a string.
# Why use them: Quickly determine a string's length for validation or looping.

# Syntax:
string.length
string.size


# .ord / .chr
# What they do: .ord converts a character to its ASCII value, and .chr does the reverse.
# Why use them: Converting between numeric codes and characters (e.g., encryption, character arithmetic).

# Syntax:
"a".ord  # → 97
97.chr   # → "a"


# .succ
# What it does: Returns the "next" string, incrementing characters (e.g., "a" → "b", "z" → "aa").
# Why use it: Handy for generating sequences or iterating through alphabetical or numeric ranges.

# Syntax:
string.succ
