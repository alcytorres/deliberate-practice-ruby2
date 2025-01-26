# Write a custom class with complex attributes


# 1. Write a ShoppingCart class that stores an array of items with methods to add an item, remove an item, and display all the items.

class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def remove_item(item)
    @items.delete(item)
  end

  def display_items
    puts "Items in shopping cart"
    @items.each {|item| puts "- #{item}"}
  end
end

# cart = ShoppingCart.new
# cart.add_item("Apple")
# cart.add_item("Banana")
# cart.add_item("Orange")
# cart.display_items
# cart.remove_item("Banana")
# cart.display_items




# 2. Write a Product class that stores the name, price, and metadata, where metadata is a hash that stores additional information about the product.





# 3. Write a Playlist class that stores a name and an array of songs with methods to add a song, remove a song, shuffle the songs into a random order, and display all the songs.

class Playlist
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def remove_song(song)
    @songs.delete(song)
  end

  def shuffle
    @songs.shuffle!
  end

  def display_playlist
    puts "Playlist: #{@name}"
    puts "Songs in playlist"
    @songs.each {|song| puts "- #{song}"}
  end
end

playlist = Playlist.new("Alcy Playlist")
playlist.add_song("Song 1")
playlist.add_song("Song 2")
playlist.add_song("Song 3")
playlist.display_playlist
playlist.remove_song("Song 2")
playlist.display_playlist
playlist.shuffle
playlist.display_playlist



# Breakdown
class Playlist
  # The `initialize` method sets up a new playlist.
  # It takes a `name` for the playlist and creates an empty list of songs.
  def initialize(name)
    @name = name    # Stores the playlist's name.
    @songs = []     # Creates an empty array to hold songs.
  end

  # Adds a song to the playlist.
  def add_song(song)
    @songs << song  # Appends the song to the @songs array.
  end

  # Removes a song from the playlist.
  def remove_song(song)
    @songs.delete(song)  # Deletes the song from the @songs array.
  end

  # Shuffles the order of the songs in the playlist.
  def shuffle
    @songs.shuffle!  # Randomizes the @songs array in place.
  end

  # Displays the playlist name and all the songs in it.
  def display_playlist
    puts "Playlist: #{@name}"  # Prints the playlist name.
    puts "Songs in playlist"
    @songs.each { |song| puts "#{song}" }  # Prints each song in the playlist.
  end
end

# Creates a new playlist named "Alcy Playlist".
playlist = Playlist.new("Alcy Playlist")

# Adds three songs to the playlist.
playlist.add_song("Song 1")
playlist.add_song("Song 2")
playlist.add_song("Song 3")

# Displays the playlist and its songs.
playlist.display_playlist

# Removes "Song 2" from the playlist and displays the updated playlist.
playlist.remove_song("Song 2")
playlist.display_playlist

# Shuffles the playlist and displays the shuffled songs.
playlist.shuffle
playlist.display_playlist




# 4. Write a Contact class that stores the name, age, and contact_info, where contact_info is a hash that stores any additional information about the contact.
class Person
  attr_reader :name, :age, :contact_info

  def initialize(name, age, contact_info)
    @name = name
    @age = age
    @contact_info = contact_info
  end
end

person = Person.new("Trevor", 25, {email: "trevor@email.com", phone: 12345667890, id: "AFA"})
puts "Person Details:"
puts "Name: #{person.name}"
puts "Age: #{person.age}"
puts "Contact Info: #{person.contact_info}"
puts "Phone: #{person.contact_info[:phone]}"
puts "Email: #{person.contact_info[:email]}"