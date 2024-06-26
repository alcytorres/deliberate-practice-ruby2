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

# 2. Write a Rectangle class with attributes for width and height.
class Rectangle 
  def initialize (width, height)
    @width = width
    @height = height
  end
end

rectangle = Rectangle.new(10, 20)
pp rectangle


# 3. Write a Person class with attributes for name and age.
class Person 
  def initialize(name, age)
    @name = name
    @age = age
  end
end

person = Person.new("Rojas", 23)
pp person

# 4. Write a Location class with attributes for latitude and longitude.
class Location
  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end
end

location = Location.new(1045, 3070)
pp location

# 5. Write an Account class with attributes for name and balance.


# 6. Write a Movie class with attributes for title, director, and year.


# 7. Write a Car class with attributes for make, model, year, and color.


# 8. Write a Point class with attributes for x, y, and z coordinates.


# 9. Write a Book class with attributes for title, author, and year.


# 10. Write a Plant class with attributes for name, size, and price.