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


=begin
-----REFLECTION-----
1. The pseudocode is definitely helpful in that it sets out a basic plan of attack for how you want your code to flow, what the input should be
and what you wnat your output to be. When you actually start defining your methods it is actually easier to 
write your code and tackle it piece by piece instead of making one giant hot mess on your page.

2. Arrays are good for holding lists of datas, and hashes are also good for holding lists of data but allow you to assign/link additional information
to the individual items in your list. Here we used an array to only to store strings of our items once we had split
the initial string that was fed into our method. We then pushed the items into a hash and assigned a default value of 1 to each.
A hash to store the full list is more effective because it allowed us to associated each item with a quantity that we could change or manipulate 
by using the key or value.

3. A method returns an object (string, boolean, integer), but somtimes it will retun nil. 
4. Methods can take the follwoing as arguments: Variables, strings, integers, block methods, default values, an array of values (by using the splat operator).

5. Methods can be passed to other methods as a parameter or block.  

6. I still didn't quite understand the difference between using p and return, now I understand that p returns and prints the value and return just returns the value. 
I learned about gems which was a good bonus and also learned about the guard clause, a conditional statement
at the top of a function that will end the method if certain conditions aren't meant. We used it on line 56 in our update item method. 
If someone lists an item that isn't already on the list, the method will end and retun nil because the condition of that item already being on our
grocery list wasn't met.  
I also solidified my understadning of hashes and arrays and when each should be used. 