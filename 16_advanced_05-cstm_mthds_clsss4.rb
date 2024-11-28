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

cart = ShoppingCart.new
cart.add_item("Apple")
cart.add_item("Banana")
cart.add_item("Orange")
cart.display_items
cart.remove_item("Banana")
cart.display_items




# 2. Write a Product class that stores the name, price, and metadata, where metadata is a hash that stores additional information about the product.



# 3. Write a Playlist class that stores a name and an array of songs with methods to add a song, remove a song, shuffle the songs into a random order, and display all the songs.



# 4. Write a Contact class that stores the name, age, and contact_info, where contact_info is a hash that stores any additional information about the contact.


