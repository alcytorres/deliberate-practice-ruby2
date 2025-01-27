# #------------------------------------------------------------------------------
# # attr_reader
# #------------------------------------------------------------------------------
# # Problem 1: Create a class with read-only access to instance variables.

# class Book
#   attr_reader :title, :author

#   def initialize(title, author)
#     @title = title
#     @author = author
#   end
# end

# book = Book.new("1984", "George Orwell")
# puts book.title  # Output: 1984
# puts book.author # Output: George Orwell
# # book.title = "Animal Farm" # This will raise an error because the setter is not defined.

# #------------------------------------------------------------------------------
# # Problem 2: Use attr_reader to expose read-only attributes of a class.

# class Rectangle
#   attr_reader :width, :height

#   def initialize(width, height)
#     @width = width
#     @height = height
#   end

#   def area
#     @width * @height
#   end
# end

# rectangle = Rectangle.new(5, 10)
# puts rectangle.width  # Output: 5
# puts rectangle.height # Output: 10
# puts rectangle.area   # Output: 50


# #------------------------------------------------------------------------------
# # attr_writer

# #------------------------------------------------------------------------------
# # Problem 1: Create a class with write-only access to instance variables.

# class Person
#   attr_writer :password

#   def initialize(password)
#     @password = password
#   end
# end

# person = Person.new("secret123")
# person.password = "newpassword123" # Modifies the password
# # puts person.password # This will raise an error because there is no getter method.

# #------------------------------------------------------------------------------
# # Problem 2: Use attr_writer to change an attribute but not expose it directly.

# class User
#   attr_writer :email

#   def initialize(email)
#     @contact_email = email
#   end

#   def display_email
#     "Email is updated."
#   end
# end

# user = User.new("example@example.com")
# user.email = "newemail@example.com" # Updates the email
# puts user.display_email             # Output: Email is updated.


# #------------------------------------------------------------------------------
# # attr_accessor

# #------------------------------------------------------------------------------
# # Problem 1: Create a class with both getter and setter methods for instance variables.
# class Car
#   attr_accessor :make, :model

#   def initialize(make, model)
#     @make = make
#     @model = model
#   end
# end

# car = Car.new("Toyota", "Corolla")
# puts car.make   # Output: Toyota
# puts car.model  # Output: Corolla

# car.make = "Honda"
# car.model = "Civic"
# puts car.make   # Output: Honda
# puts car.model  # Output: Civic

# #------------------------------------------------------------------------------
# # Problem 2: Use attr_accessor for modifying and retrieving attributes.
# class Point
#   attr_accessor :x, :y

#   def initialize(x, y)
#     @x = x
#     @y = y
#   end

#   def display
#     "Point is at (#{@x}, #{@y})"
#   end
# end

# point = Point.new(3, 7)
# puts point.display # Output: Point is at (3, 7)

# point.x = 5
# point.y = 10
# puts point.display # Output: Point is at (5, 10)








