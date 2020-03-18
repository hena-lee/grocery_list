#first, create a function that initializes a list
def create_list
    #prompt user to enter the title of their grocery list
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
    #prompt user for the quantity of the item
    print "Quantity: "
    #assign variable the value and convert to integer
    quantity = gets.chomp.to_i
    #create another hash, this time assigning the keys with the user inputs as their values
    grocery_items = {"item" => item, "quantity" => quantity}
    #return the hash
    return grocery_items
end

#third, create a function that accepts a hash and prints the grocery list
def print_list(grocery_list)
    #print the title of their list using string interpolation with the grocery_list hash from the first method and finding the value of the key inside the bracket notation
    print "\nTitle: #{grocery_list["title"]}\n"
    #using an each loop, iterate through each object of the grocery_list hash (which we will push later into the array) and assign each pair the "pair" variable
    grocery_list["items"].each {|pair|
        #put statement expressing each item and quantity using string interpolation and bracket notations to find the values of those keys
        puts "\nItem: #{pair["item"]}"
        puts "Quantity: #{pair["quantity"]}"
    }
end

#assign new variable the create_list function
list = create_list()
#ask user if they would like to add anything else to their list
puts "What would you like to add?\n"
#assign another variable the string "yes" so that the default will prompt user to enter another item
choice = 'yes'
#using a while loop, create a conditional statement testing while the "choice" variable equals "yes",
#push the add_list_items function into the values of the "items" key in the create_list function
while choice == "yes"
   list["items"].push(add_list_items)
    #then ask the user if they want to add another item
    #This while loop will only end when the user inputs a string other than "yes"
    print "Add new item? (yes/no) \n"
    #assign the user input to the choice variable and convert to downcase
    choice = gets.chomp.downcase
end

#finally, print out list by putting in the list, or create_list function parameter into the print_list function
puts "Here's your list: "
print_list(list)
puts "\nLet's get shopping!"
