# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string into an array of separated strings
  # create empty hash 
  # iterate through the array of strings
  # for each string set the key to item and the value to quantiy
  # print the list to the console [can you use one of your other methods here?]
# output: hash

require "colorize"
def create_list(groceries)
	items = groceries.split(" ")
	grocery_list = {}
	 items.each do |item|
	 	grocery_list[item] = 1
	 	end
	 	p grocery_list
end

list = create_list('apples bananas carrots cereal')

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: for each string set the key to item and the value to quantiy
# output: updated hash

def add_item(grocery_list, item, quantity = 1)
	grocery_list[item] = quantity 
	grocery_list
end

p add_item(list, "Lemonade", 2)
p add_item(list, "Tomatoes", 3)
p add_item(list, "Onions", 1)
p add_item(list, "Ice Cream", 4)

# Method to remove an item from the list
# input:list, item name
# steps: Remove item from list based on key
# output: updated hash

def remove_item(grocery_list, item)
	grocery_list.delete(item)
	grocery_list
end

p remove_item(list, "Lemonade")

# Method to update the quantity of an item
# input: list, item, new quantity
# steps: for each string set the key to item and the updated value to quantiy
# output: updated hash

def update_item(grocery_list, item, quantity)
	return unless grocery_list[item] #guard clause
	grocery_list[item] = quantity
	grocery_list
end

p update_item(list, "Ice Cream", 1)

# Method to print a list and make it look pretty
# input: list
# steps: for each item print the key and value
# output: hash/printed list

def print_list(grocery_list)
	puts "Here is a list of your items:".colorize(:blue)

		grocery_list.each do |item, quantity|
			puts "#{quantity} #{item}".colorize(:color => :red)
		end
end

print_list(list)
