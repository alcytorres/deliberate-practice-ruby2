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

new_song = Song.new("Thank You for the Music", "ABBA", "3:52")
# new_song.print_info


# Breakdown
class Song
  # `attr_reader` makes it easy to get (read) the values of `name`, `artist`, and `duration` without writing separate methods.
  attr_reader :name, :artist, :duration

  # `attr_writer` allows you to set (change) the values of `name`, `artist`, and `duration`.
  attr_writer :name, :artist, :duration

  def initialize(name, artist, duration)
    # This method is called when you create a new Song. It sets up the song's name, artist, and duration.
    @name = name       # Saves the song's name.
    @artist = artist   # Saves the artist's name.
    @duration = duration # Saves the song's duration.
  end

  def print_info
    # This method prints out the song's details in a nice format.
    puts "The song, #{@name} by #{@artist} has a duration of #{@duration}"
  end
end

# This creates a new song with the title "Thank You for the Music," artist "ABBA," and duration "3:52".
new_song = Song.new("Thank You for the Music", "ABBA", "3:52")

# This calls the `print_info` method, which prints the song's details.
# new_song.print_info


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
    return "The area is #{@width * @height}"
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

pp plant

# There is no need for a "pretty print" since the print_info method has a puts statement
plant.print_info