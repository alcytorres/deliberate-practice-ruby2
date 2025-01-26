# Write a hash, read items from a hash, and add new items to existing hash

# 1. Make a hash to store a person's first name, last name, and email address. Then print each attribute on separate lines.
person = {first_name: "John", last_name: "Smith", email_address: "johnsmith@gmail.com" }
# puts person[:first_name]
# puts person[:last_name]
# puts person[:email_address]

# Solution
# person = {"first_name" => "John", "last_name" => "Smith", "email_address" => "johnsmith@gmail.com" }
# puts person["first_name"]
# puts person["last_name"]
# puts person["email_address"]

# 2. Make an array of hashes to store the first name and last name for 3 different people. Then print out the first person's info.
persons = [
  {first_name: "Mike", last_name: "Santana"},
  {first_name: "Trevor", last_name: "Philips"},
  {first_name: "John", last_name: "Smith"}
]

# puts persons[0][:first_name]
# puts persons[0][:last_name]


# Solution
# puts persons[0][:first_name]
# puts persons[0][:last_name]

# 3. Make a hash to store prices for 3 different menu items. Then add a new menu item and price and print the hash to see the result.
menu = { "sandwich" => 4, "soda" => 2, "juice" => 3 }

# puts menu

# Solution
# menu["fries"] = 1
# puts menu

# # 4. Make a hash to store a book's title, author, number of pages, and language. Then print each attribute on separate lines.
book = {title: "The Adventures of Tom Sawyer", author: "Mark Twain", pages: 200, language: "English"}

# puts book[:title]
# puts book[:author]
# puts book[:pages]
# puts book[:language]

# 5. Make an array of hashes to store the title and author for 3 different books. Then print out the third book's author.
books = [
    {title: "To Kill a Mockingbird", author: "Harper Lee"},
    {title: "1984", author: "George Orwell"},
    {title: "The Great Gatsby", author: "Scott Fitzgerald"}
]

# puts books[2][:author]


# Solution
# puts books[2][:author]

# 6. Make a hash to store 3 different states and their capitals. Then add a new state and capital and print the hash to see the result.
capitals = {"California" => "Sacramento", "Texas" => "Austin", "Florida" => "Tallahassee"}

# puts capitals


# Solution
# capitals["Massachusetts"] = "Boston"
# puts capitals

# 7. Make a hash to store a laptop's brand, model, and year. Then print each attribute on separate lines.
laptop = {brand: "apple", model: "macbook pro", year: 2023 }

# puts laptop[:brand]
# puts laptop[:model]
# puts laptop[:year]


# 8. Make an array of hashes to store the brand and model for 3 different laptops. Then print out the second laptop's model.
laptop = [
  {brand: "apple", model: "macbook pro"},
  {brand: "dell", model: "xps13"},
  {brand: "windows", model: "lenovo"}
]

# puts

# Solution
# puts laptop[1][:model]

# 9. Make a hash to store definitions for 2 different words. Then add a new word and definition and print the hash to see the result.
dictionary = { good: "of high quality", mad: "very angry" }

# puts dictionary

# Solution
# dictionary[:glad] = "delighted"
# puts dictionary

# 10. Make a hash to store a shirt's brand, color, and size. Then print each attribute on separate lines.
shirt = {brand: "nike", color: "white", size: "medium"}

# Solution
# puts shirt[:brand]
# puts shirt[:color]
# puts shirt[:size]
