General Methods

puts
# Used for general output.
# It prints the given data followed by a newline, making it ideal for displaying readable text.

p
# Used primarily for debugging.
# It prints a more raw, detailed representation of objects, showing things like quotes and escape characters.

pp
# Short for "pretty print."
# It's used for displaying complex data structures (like arrays and hashes) in a more readable format.

inspect
# What it does: Returns a string representation of an object, often used for debugging purposes.
# Why use it: It provides a detailed look at an object, including its structure and values, making it helpful for troubleshooting.


#------------------------------------------------------------------------------






#------------------------------------------------------------------------------
initialize
# The initialize method is a special method in Ruby that is called automatically when you create a new instance of a class using .new. It is often used to set up instance variables and provide initial values for the object.

# What it does: The initialize method sets up the state (or data) for a new object. It allows you to pass arguments to the object when it is created.
# Why use it: To make sure every object starts with the necessary data. It simplifies object creation by automating the setup process.

# Syntax
class ClassName
  def initialize(argument1, argument2, ...)
    @instance_variable1 = argument1
    @instance_variable2 = argument2
  end
end

# Creating a new object:
object = ClassName.new(value1, value2)

#------------------------------------------------------------------------------
# Problem 1
class Dog
  def initialize(name, breed)
    @name = name          # Instance variable to store the dog's name
    @breed = breed        # Instance variable to store the dog's breed
  end

  def details
    "Name: #{@name}, Breed: #{@breed}"
  end
end

dog = Dog.new("Buddy", "Golden Retriever") # Create a new Dog object
puts dog.details                           # Output: Name: Buddy, Breed: Golden Retriever

#------------------------------------------------------------------------------
# Problem 2
class Car
  def initialize(make, model, year = 2022) # Default value for `year`
    @make = make
    @model = model
    @year = year
  end

  def details
    "#{@year} #{@make} #{@model}"
  end
end

car1 = Car.new("Toyota", "Camry", 2023)  # Explicit year
car2 = Car.new("Honda", "Civic")        # Default year is 2022

puts car1.details  # Output: 2023 Toyota Camry
puts car2.details  # Output: 2022 Honda Civic


# Key Notes:
# 1. initialize is automatically called when .new is used.
# 2. Use @ to define instance variables that are unique to each object.
# 3. If initialize is not defined in a class, Ruby will still create objects, but they won’t have any initial state set.

# The initialize method is essential for creating objects with meaningful, pre-defined data!



#------------------------------------------------------------------------------
attr_reader
# What it does: Creates getter methods for instance variables in a class.
# Why use it: Allows reading the value of instance variables without directly exposing them.

# Syntax:
# attr_reader :variable_name

#------------------------------------------------------------------------------
# Problem 1: Create a class with read-only access to instance variables.

class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end
end

book = Book.new("1984", "George Orwell")
puts book.title  # Output: 1984
puts book.author # Output: George Orwell
# book.title = "Animal Farm" # This will raise an error because the setter is not defined.

#------------------------------------------------------------------------------
# Problem 2: Use attr_reader to expose read-only attributes of a class.

class Rectangle
  attr_reader :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    @width * @height
  end
end

rectangle = Rectangle.new(5, 10)
puts rectangle.width  # Output: 5
puts rectangle.height # Output: 10
puts rectangle.area   # Output: 50


#------------------------------------------------------------------------------
attr_writer
# What it does: Creates setter methods for instance variables in a class.
# Why use it: Allows modifying the value of instance variables while keeping the getter private.

# Syntax:
# attr_writer :variable_name

#------------------------------------------------------------------------------
# Problem 1: Create a class with write-only access to instance variables.

class Person
  attr_writer :password

  def initialize(password)
    @password = password
  end
end

person = Person.new("secret123")
person.password = "newpassword123" # Modifies the password
# puts person.password # This will raise an error because there is no getter method.

#------------------------------------------------------------------------------
# Problem 2: Use attr_writer to change an attribute but not expose it directly.

class User
  attr_writer :email

  def initialize(email)
    @contact_email = email
  end

  def display_email
    "Email is updated."
  end
end

user = User.new("example@example.com")
user.email = "newemail@example.com" # Updates the email
puts user.display_email             # Output: Email is updated.


#------------------------------------------------------------------------------
attr_accessor
# What it does: Creates both getter and setter methods for instance variables in a class.
# Why use it: Provides full access to instance variables (read and write) with minimal code.

# Syntax:
attr_accessor :variable_name

#------------------------------------------------------------------------------
# Problem 1: Create a class with both getter and setter methods for instance variables.
class Car
  attr_accessor :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end
end

car = Car.new("Toyota", "Corolla")
puts car.make   # Output: Toyota
puts car.model  # Output: Corolla

car.make = "Honda"
car.model = "Civic"
puts car.make   # Output: Honda
puts car.model  # Output: Civic

#------------------------------------------------------------------------------
# Problem 2: Use attr_accessor for modifying and retrieving attributes.
class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def display
    "Point is at (#{@x}, #{@y})"
  end
end

point = Point.new(3, 7)
puts point.display # Output: Point is at (3, 7)

point.x = 5
point.y = 10
puts point.display # Output: Point is at (5, 10)


#------------------------------------------------------------------------------
attr_reader   attr_writer   attr_accessor
#------------------------------------------------------------------------------
# Problem 1: Create a class with attr_reader, attr_writer, and attr_accessor and one instance variables to see the results.
class Person
  # attr_reader :password
  # attr_writer :password
  attr_accessor :password

  def initialize(password)
    @password = password
  end
end

person = Person.new("secret123")
person.password = "newpassword123" # Modifies the password
puts person.password # This will raise an error because there is no getter method.



#------------------------------------------------------------------------------
# Basic Example Breakdown
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

# Below is a more detailed explanation of the syntax and why it is the way it is in the given Ruby code.
# By understanding the reasoning behind each part, you’ll remember it better.

# -----------------------------------
# The Original Code
# -----------------------------------
class Song
  def initialize (name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
end

song = Song.new("Dancing Queen", "ABBA", "3:50")
pp song

# -----------------------------------
# Breakdown of the Code
# -----------------------------------
1. class Song
#    What it is: This line starts the definition of a new class named "Song".
#                In Ruby, classes are blueprints for creating objects.
#
#    Why it is: Creating a class helps organize your code and describe how "Song" objects should behave
#               or what data they contain.

2. def initialize(name, artist, duration)
#    What it is: The "initialize" method is automatically called whenever you write Song.new(...).
#                It "initializes" the object with the given data.
#
#    Why it is: In Ruby, initialize acts like a constructor (a special method that sets up new objects).
#               You use it to set up necessary variables (like @name).

3. @name = name, @artist = artist, @duration = duration
#    What they are: These lines store the method parameters (name, artist, duration) in instance variables (those that start with @).
#
#    Why it is:
#     - The "@" symbol indicates the variable is unique to each instance (object) of the class.
#     - Each Song object will have its own @name, @artist, and @duration, so they don’t get mixed up
#       between different songs.

4. end
#    What it is: Ruby uses the keyword "end" to mark the end of a method (in this case initialize)
#                and the end of the class definition.
#
#    Why it is: Ruby uses "end" instead of curly braces ({}) to clearly show where code blocks finish.
#               This helps keep the code easy to read.

5. song = Song.new("Dancing Queen", "ABBA", "3:50")
#    What it is: This code creates a new instance (an actual song object) from the Song class by calling Song.new(...).
#
#    Why it is:
#     - Song.new runs the initialize method with the provided values: "Dancing Queen", "ABBA", and "3:50".
#     - song receives the newly created object so you can use it later.

6. pp song
#    What it is: "pp" stands for “pretty-print.” It displays the object in a more readable format
#                than standard print or puts.
#
#    Why it is:
#     - Without pp, Ruby might just show something like #<Song:0x00007ffd9a8c7a50> which is less readable.
#     - pp attempts to show the internal details (like the instance variables) in a formatted way.

# -----------------------------------
# Why This Matters for Memory
# -----------------------------------
# - Relate It to Real Life:
#   Think of a class (Song) like a “recipe” for baking. The initialize method is your
#   “prep instructions”—it tells you how to set up the ingredients (@name, @artist, and @duration).
#   When you actually bake (call Song.new), you get a finished cake (a “song” object),
#   which you can then use or show off.
#
# - Associations:
#   class → blueprint/recipe
#   initialize → constructor/prep step
#   @variable → personal data for each object (like each cake’s flavor or icing)
#
# - Consistent Practice:
#   Keep writing simple classes and using "new". Over time, you’ll remember how initialize sets up
#   instance variables because you’ll have repeated that process many times.

# -----------------------------------
# Key Takeaways
# -----------------------------------
# 1. Classes are blueprints for objects.
# 2. "initialize" is automatically called and sets up instance variables.
# 3. "@name" means the variable belongs to a specific object.
# 4. "Song.new(...)" creates a real, usable object from the blueprint.
# 5. "pp" helps visualize the object’s data in a friendly way.

# These points should help you grasp why Ruby’s syntax is the way it is,
# making it easier to remember and apply in future projects.




