# Write a custom class with valid syntax


# 1. Write a Song class with attributes for name, artist, and duration.
class Song
  def initialize (name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
end

song = Song.new("Dancing Queen", "ABBA", "3:50")
pp song


# Breakdown
class Song
  # Defines a class called `Song`, which represents a song object with attributes like name, artist, and duration.

  def initialize(name, artist, duration)
    # The `initialize` method is a constructor that gets called when a new instance of the `Song` class is created.
    # It accepts three parameters: `name`, `artist`, and `duration`.
    # These parameters are assigned to instance variables (@name, @artist, @duration), making them available for each instance of the class.
    @name = name
    @artist = artist
    @duration = duration
  end
end

# Creates a new instance of the Song class with the name "Dancing Queen," artist "ABBA," and duration "3:50".
song = Song.new("Dancing Queen", "ABBA", "3:50")

# Pretty-prints the `song` object to the console. By default, Ruby prints the object in its memory representation
# (e.g., #<Song:0x00007fddac0e0a88>), as the Song class does not define a custom `to_s` or `inspect` method.
pp song


# 2. Write a Rectangle class with attributes for width and height.
class Rectangle
  def initialize (width, height)
    @width = width
    @height = height
  end
end

rectangle = Rectangle.new(10, 20)
# pp rectangle


# 3. Write a Person class with attributes for name and age.
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

person = Person.new("Rojas", 23)
# pp person

# 4. Write a Location class with attributes for latitude and longitude.
class Location
  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end
end

location = Location.new(1045, 3070)
# pp location

# 5. Write an Account class with attributes for name and balance.
class Account
  def initialize(name, balance)
    @name = name
    @balance = balance
  end
end

account = Account.new("Checking", 7000)
# pp account

# 6. Write a Movie class with attributes for title, director, and year.


# 7. Write a Car class with attributes for make, model, year, and color.


# 8. Write a Point class with attributes for x, y, and z coordinates.


# 9. Write a Book class with attributes for title, author, and year.


# 10. Write a Plant class with attributes for name, size, and price.