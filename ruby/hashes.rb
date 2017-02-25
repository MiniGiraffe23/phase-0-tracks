=begin
pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).
Your keys should be symbols unless you find that you need a string for some reason -- usually only when spaces or other "user friendly" formatting are needed (as in the case of using someone's full name as a hash key). Basically, symbols are simpler for programmers to use, and readable enough by technical folks to be used in place of strings most of the time.
Your program should ...
- Prompt the designer/user for all of this information.
- Convert any user input to the appropriate data type.
- Print the hash back out to the screen when the designer has answered all of the questions.
- Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
Print the latest version of the hash, and exit the program.
Be sure to pseudocode, and leave your pseudocode in as comments.
=end

client_design_preference = {

	name: " ",
	address: " ",
	age: " ",
	number_of_children: " ",
	spend_amount: " ",
	decor_theme: " ",
	prefered_stores: " ",
	favorite_colors: " ",
	paint_preference: " ",

}

puts "Welcome to your client design organizer."
puts "Here you can store all your data about various clients, and I will keep it nice and organized for you."
puts "Please answer the following questions about your client."


puts "What is your client's full name?"
client_design_preference[:name] = gets.chomp.capitalize

puts "Please double check the name you entered. If \"#{client_design_preference[:name]}\" is correct, type \"yes\", if the name is incorrect, type \"no\"."
correct_name = gets.chomp
	if correct_name == "yes" || correct_name == "Yes"
		client_design_preference[:name]
	elsif correct_name	== "no" || correct_name == "No"
		puts "Please re-enter client's name."
		client_design_preference[:name] = gets.chomp.capitalize
	else
		puts "I do not understand. Please start over."
	end 

puts "What is the address of \"#{client_design_preference[:name]}\"?"
client_design_preference[:address] = gets.chomp

puts "Please double check the address you enterd. If it \"#{client_design_preference[:address]}\" is correct, type \"yes\", if the address is incorrect, type \"no\"."
correct_address = gets.chomp
	if correct_address == "yes" || correct_address == "Yes"
		client_design_preference[:address]
	elsif correct_address == "no" || correct_address == "No"
		puts "Please re-enter client's adress."
		client_design_preference[:address] = gets.chomp
	else
		puts "I do not understand. Please start over."
	end

puts "What is the age of \"#{client_design_preference[:name]}\?"
client_design_preference[:age] == gets.to_i

puts "Do you have any children? (yes or no)"
children = gets.chomp
	if children == "yes"
		puts "How many children?"
		client_design_preference[:children] = gets.to_i
	elsif children == "no"
		puts "Oh...okay."
		client_design_preference[:children] = 0
	else
		puts "I do not understand. Please start over."
	end

	p client_design_preference
