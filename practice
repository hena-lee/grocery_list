#first, create a function that initializes a list and prompts user to enter the title of their grocery list
def create_list
    print "Title of List: "
    #assign variable the user input
    title = gets.chomp
    #create a hash with a "title" key with the user input as its value and an "items" key with an empty array as its value
    grocery_list = {"title" => title, "items" => Array.new}
    #return the hash
    return grocery_list
end

#second, create a function that allows the user to add items to the list
def add_list_items
  #prompt user to enter their item
    print "Item: "
    #assign variable the value and capitalize their input
    item = gets.chomp.capitalize
    #prompt user for the quantity of the item and conver
    print "Quantity: "
    #assign variable the value and convert to integer
    quantity = gets.chomp.to_i
    #create another hash, this time assigning the keys the user inputs as their values
    grocery_items = {"item" => item, "quantity" => quantity}
    #return the hash
    return grocery_items
end

#third, create a function that accepts a hash and prints the grocery list
def print_list(grocery_list)
    #
    print "\nTitle: #{grocery_list["title"]}\n"
    grocery_list["items"].each {|pair|
        puts "\nItem: #{pair["item"]}"
        puts "Quantity: #{pair["quantity"]}"
    }
end

list = create_list()
puts "What would you like to add?\n"

choice = 'yes'
while choice == "yes"
   list["items"].push(add_list_items)
    print "Add new item? (yes/no) \n"
    choice = gets.chomp.downcase
end

puts "Here's your list: "
print_list(list)
puts "\nLet's get shopping!"
