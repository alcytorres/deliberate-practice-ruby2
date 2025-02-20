# Write a custom class with custom methods

# 1. Write a Song class with attributes and reader/writer methods for name, artist, and duration. Then write a method that prints the name, artist, and duration in a single sentence.

# class Song


class Song
  attr_reader :name, :artist, :duration
  attr_writer :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def print_info
    puts "The song, #{@name} by #{@artist} has a duration of #{@duration}"
  end

end

song1 = Song.new("Thank You for the Music", "ABBA", "3:52")
# pp song1
# song1.print_info

# song2 = Song.new("Gloria", "Patti Smith", "5:56")
# pp song2
# song2.print_info


# Full Breakdown
# This line creates a "Song" class - like a blueprint for making song objects
class Song
  # Why: Classes help you group related data (like song details) and actions (like printing info) together
  # When to use: Use a class when you want to create multiple items (like songs) with similar traits and behaviors

  attr_reader :name, :artist, :duration
  # What: Makes "getter" methods so you can read the song’s name, artist, and duration
  # Why: Lets you safely access these values from outside the class without changing them
  # When to use: Use getters when you want others to see data but not mess with it

  attr_writer :name, :artist, :duration
  # What: Makes "setter" methods so you can change the song’s name, artist, and duration
  # Why: Gives you a way to update values after creating the song
  # When to use: Use setters when you want to allow controlled updates to data

  # This is the constructor - it runs when you make a new song
  def initialize(name, artist, duration)
    # Why: Sets up the song with starting values (like a birth certificate for the song)
    @name = name         # Stores the song’s name in an instance variable
    @artist = artist     # Stores the artist in an instance variable
    @duration = duration # Stores the duration in an instance variable
    # What are instance variables (@): They hold data unique to each song object
    # When to use: Use a constructor when you need to set up an object with specific starting info
  end

  # This is a method inside the class - it’s an action the song can do
  def print_info
    # What: Prints a nice sentence with the song’s details
    puts "The song, #{@name} by #{@artist} has a duration of #{@duration}"
    # Why: Makes it easy to display all the song’s info in one go
    # When to use: Use methods inside a class for tasks or actions related to the object (like showing details)
  end
end

# This creates a new song object using the class blueprint
song1 = Song.new("Thank You for the Music", "ABBA", "3:52")
# Why: You’re making a specific song with real data based on the class
# What: "song1" is now an object (an instance of Song) with its own name, artist, and duration

pp song1
# What: Pretty-prints the song1 object to show its details in a readable way
# Why: Helps you check what’s inside the object (good for testing or debugging)

song1.print_info
# What: Runs the print_info method on song1 to show its info as a sentence
# Why: Shows how you can use the class’s method to do something useful with the object’s data


# Why This is Useful
# Classes: Imagine you’re managing a music library. A Song class lets you make as many songs as you want, each with its own name, artist, and duration, without rewriting code.
# Getters (attr_reader): You can ask, “What’s this song’s name?” without accidentally changing it.
# Setters (attr_writer): You can fix a typo in the artist’s name later if needed.
# Constructor (initialize): Sets everything up right away so every song starts with the right info.
# Instance Variables (@): Each song remembers its own details separately (song1 doesn’t mix up with song2).
# Methods (print_info): Saves time by letting you reuse actions (like printing) for any song.

# When to Use Each Part
# Class: Use when you have multiple items (songs, cars, people) that share traits and actions.
# Getter Methods: Use when you want to share info but keep it safe from changes.
# Setter Methods: Use when you need to update info later (like fixing a song’s duration).
# Constructor: Use to give objects a proper start with required data.
# Instance Variables: Use to store unique data for each object.
# Method Inside Class: Use to add behaviors or tasks tied to the object (like printing or calculating something).

# This setup is great for organizing code, especially for projects like a playlist app, game characters, or anything with repeatable “things” that need data and actions!



# 2. Write a Rectangle class with attributes and reader/writer methods for width and height. Then write a method that returns the area of the rectangle.

# class Rectangle


class Rectangle
  attr_reader :width, :height
  attr_writer :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    "The area is #{@width * @height}"
  end
end

rectangle = Rectangle.new(10, 20)
# pp rectangle
# pp rectangle.area


# 3. Write a Person class with attributes and reader/writer methods for name and age. Then write a method that returns the person's name in all capital letters.

# class Person

class Person
  attr_reader :name, :age
  attr_writer :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def name_cap
    return @name.upcase
  end

end

person = Person.new("Alcy", 25)
# pp person.name_cap


# 4. Write a Coordinate class with attributes and reader/writer methods for latitude and longitude. Then write a method that prints out the latitude and longitude in a single sentence.


# 5. Write an Account class with attributes and reader/writer methods for name and balance. Then write a method that prints a warning if the balance is below $100.

class Account
  attr_reader :name, :balance
  attr_writer :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def warning
    if @balance < 100
      puts "WARNING: Your balance is below 100"
    else
      puts "Your balance is #{@balance}"
    end
  end
end

# account1 = Account.new("Mike", 60)
# account1.warning
# pp account1


# 6. Write a Movie class with attributes and reader/writer methods for title, director, and year. Then write a method that prints out the attributes in a single sentence.

# class Movie

class Movie
  attr_reader :title, :director, :year
  attr_writer :title, :director, :year

  def initialize(title, director, year)
    @title = title
    @director = director
    @year = year
  end

  def print_info
    pp "#{@title} is a movie by #{@director} that released in #{@year}."
  end

end

movie = Movie.new("Inception", "Christopher Nolan", "2010")
# pp movie
# movie.print_info


# 7. Write a Car class with attributes and reader/writer methods for make, model, year, and color. Then write a method that returns the make and model as a single sentence in all lowercase letters.

# class Car


class Car
  attr_reader :make, :model, :year, :color
  attr_writer :make, :model, :year, :color

  def initialize(make, model, year, color)
    @make = make
    @model = model
    @year = year
    @color = color
  end

  def return_info
    return "The car you have selected is a #{@make} #{@model}"
  end

end

car = Car.new("Tesla", "Model X", "2024", "Red")
# pp car
# pp car.return_info.downcase


# 8. Write a Point class with attributes and reader/writer methods for x, y, and z coordinates. Then write a method that returns true if all 3 numbers are positive, otherwise it returns false.

# class Point


class Point
  attr_reader :x, :y, :z
  attr_writer :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def check_positive
    @x >= 0 && @y >= 0 && @z >= 0   # NO need for if statment
  end
end

point = Point.new(7, 10, 30)
# pp point
# pp point.check_positive


# 9. Write a Book class with attributes and reader/writer methods for title, author, and year. Then write a method that returns "Classic" if the book is older than 2000, otherwise it returns "Modern".

class Book
  attr_reader :title, :author, :year
  attr_writer :title, :author, :year

  def initialize(title, author, year)
    @title = title
    @author = author
    @year = year
  end

  def category
    if year < 2000
      "Classic"
    else
      "Modern"
    end
  end
end

book = Book.new("Little Brother", "Cory Doctorow", 2008)

# # Pretty-prints the `book` object. By default, Ruby shows the object as memory info (e.g., #<Book...>).
# pp book

# # Calls the `category` method and prints whether the book is "Classic" or "Modern."
# pp book.category


# 10. Write a Plant class with attributes and reader/writer methods for name, size, and price. Then write a method that prints out the attributes in a single sentence.

class Plant
  attr_reader  :name, :size, :price
  attr_writer  :name, :size, :price

  def initialize(name, size, price)
    @name = name
    @size = size
    @price = price
  end

  def print_info
    puts "This is a #{@name} that is a #{@size} size and cost $#{@price}"
  end

end

plant = Plant.new("Rose", "Medium", 10)

# pp plant

# plant.print_info
# There is no need for a "pretty print" since the print_info method has a puts statement
