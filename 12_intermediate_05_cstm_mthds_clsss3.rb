# Write a custom class with custom methods


# 1. Write a Song class with attributes and reader/writer methods for name, artist, and duration. Then write a method that prints the name, artist, and duration in a single sentence.

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
new_song.print_info

# 2. Write a Rectangle class with attributes and reader/writer methods for width and height. Then write a method that returns the area of the rectangle.
class Rectangle 
  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    return "The area is #{@width * @height}"
  end
end

rectangle = Rectangle.new(10, 20)
pp rectangle
pp rectangle.area


# 3. Write a Person class with attributes and reader/writer methods for name and age. Then write a method that returns the person's name in all capital letters.
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name_cap
    return @name.upcase
  end

end

person = Person.new("Alcy", 25)
pp person.name_cap



# 4. Write a Coordinate class with attributes and reader/writer methods for latitude and longitude. Then write a method that prints out the latitude and longitude in a single sentence.


# 5. Write an Account class with attributes and reader/writer methods for name and balance. Then write a method that prints a warning if the balance is below $100.


# 6. Write a Movie class with attributes and reader/writer methods for title, director, and year. Then write a method that prints out the attributes in a single sentence.
class Movie
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
pp movie
movie.print_info


# 7. Write a Car class with attributes and reader/writer methods for make, model, year, and color. Then write a method that returns the make and model as a single sentence in all lowercase letters.


# 8. Write a Point class with attributes and reader/writer methods for x, y, and z coordinates. Then write a method that returns true if all 3 numbers are positive, otherwise it returns false.


# 9. Write a Book class with attributes and reader/writer methods for title, author, and year. Then write a method that returns "Classic" if the book is older than 2000, otherwise it returns "Modern".


# 10. Write a Plant class with attributes and reader/writer methods for name, size, and price. Then write a method that prints out the attributes in a single sentence.