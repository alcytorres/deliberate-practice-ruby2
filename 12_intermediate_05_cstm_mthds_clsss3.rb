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
class Song
  # Defines a new class named Song.
  # A class is like a blueprint for objects. It lets you bundle together data (attributes)
  # and behaviors (methods) that belong together. Use a class when you want to create many objects
  # that share the same properties and actions.

  attr_reader :name, :artist, :duration
  # Creates getter methods for the instance variables @name, @artist, and @duration.
  # Getter methods allow you to access these variables from outside the class, e.g., song.name.
  # This is useful for encapsulation, letting you expose data in a controlled way.

  attr_writer :name, :artist, :duration
  # Creates setter methods for @name, @artist, and @duration.
  # Setter methods let you change these values from outside the class, e.g., song.name = "New Song".
  # This gives controlled access to modify an object's state.

  def initialize(name, artist, duration)
    # This is the constructor method.
    # It runs automatically when you create a new Song object using Song.new.
    # The purpose is to set up the initial state of the object.
    @name = name
    # Assigns the value of the argument 'name' to the instance variable @name.
    # Instance variables (prefixed with @) belong to the specific object.
    @artist = artist
    # Assigns the argument 'artist' to @artist.
    @duration = duration
    # Assigns the argument 'duration' to @duration.
  end

  def print_info
    # Defines a method to print a sentence with the song's details.
    # Methods inside a class let you perform actions using the object's data.
    puts "The song, #{@name} by #{@artist} has a duration of #{@duration}"
    # Uses string interpolation to insert the object's values into a formatted string,
    # and prints it out.
  end
end

song1 = Song.new("Thank You for the Music", "ABBA", "3:52")
# Creates a new instance of the Song class.
# Here, song1 is an object with its own @name, @artist, and @duration.
# The constructor (initialize) is called with the provided arguments.

# pp song1
# Pretty-prints the song1 object, showing its internal state.
# This is useful for debugging and seeing the values of the instance variables.

# song1.print_info
# Calls the print_info method on song1, which prints the song's details in a sentence.


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
