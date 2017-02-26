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

#initialize hash
client_design_preference = {

	name: "N/A ",
	address: "N/A",
	age: "N/A",
	number_of_children: "N/A",
	spend_amount: "N/A",
	decor_theme: "N/A",
	prefered_stores: "N/A",
	favorite_colors: "N/A"

}

#Introduce program to user and prompt them for input
puts "Welcome to your client design organizer."
puts "Here you can store all your data about various clients, and I will keep it nice and organized for you."
puts "Please answer the following questions about your client."


puts "What is your client's full name?"
client_design_preference[:name] = gets.chomp

puts "Please double check the name you entered. If \"#{client_design_preference[:name]}\" is correct, type \"yes\", if the name is incorrect, type \"no\"."
correct_name = gets.chomp
	if correct_name == "yes" || correct_name == "Yes" #convert to boolean
		client_design_preference[:name]
	elsif correct_name	== "no" || correct_name == "No"
		puts "Please re-enter client's name."
		client_design_preference[:name] = gets.chomp
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

puts "What is the age of \"#{client_design_preference[:name]}\"?"
client_design_preference[:age] = gets.to_i #convert to integer

puts "Does \"#{client_design_preference[:name]}\" have any children? (yes or no)"
children = gets.chomp
	if children == "yes"
		puts "How many children?"
		client_design_preference[:number_of_children] = gets.chomp.to_i
	elsif children == "no"
		puts "Oh...okay."
		client_design_preference[:number_of_children] = 0
	else
		puts "I do not understand. Please start over."
	end

puts "Does \"#{client_design_preference[:name]}\" have a budget? (yes or no)"
budget = gets.chomp
	if budget == "yes"
		puts "What is the max amount he/she wants to spend (nubmers only)?"
		client_design_preference[:spend_amount] = gets.to_f #convert to digit that allows decimals
	elsif budget == "no" 
		puts "Awesome! Let's go crazy!"
		client_design_preference[:spend_amount] = "Limitless!"
	else
		puts "I do not understand. Please start over."
	end

puts "Please enter the decor theme \"#{client_design_preference[:name]}\" has chosen."
client_design_preference[:decor_theme] = gets.chomp

puts "Please list your client's prefered store. (type 'none' if your client doesn't have one)"
client_design_preference[:prefered_stores] = gets.chomp

puts "Enter your client's favorite colors:"
arr_colors = [] #begin array to allow the user to input more than one color
x = 0
colors = ""
until colors == "done"
  puts "Please list a color:"
  client_design_preference[:favorite_colors] = gets.chomp
  puts "If \"#{client_design_preference[:favorite_colors]}\" is correct type \"y\", if not type \"n\" to re-enter. (type \"done\" when finished listing)"
  colors = gets.chomp
  if colors == "y" || colors == "Y"
    arr_colors << client_design_preference[:favorite_colors]
    client_design_preference[:favorite_colors] = arr_colors
  elsif colors == "n" || colors == "N"
    puts "What is the correct color:"
    client_design_preference[:favorite_colors] = gets.chomp
    arr_colors[x] = client_design_preference[:favorite_colors]
    client_design_preference[:favorite_colors] = arr_colors
  elsif colors == "done" || colors == "Done"
    arr_colors << client_design_preference[:fav_colors]
    client_design_preference[:favorite_colors] = arr_colors
  else
    puts "I don't understand. Please type done or enter another color."
  end
  x += 1
end


puts "Looks like you've answered all the questions."
print client_design_preference #print exisiting hash data

puts " "
puts " "

#Prompt user to review the above date and make any necessary changes
puts "Please review the above info. If you would like to make any changes, please enter the corresponding field: name, address, age, number of children, spend amount, decor theme, prefered stores or favorite colors. (If no changes are needed, please type 'none'.)"
change_needed = nil

until change_needed == "none"
	puts "Any more changes? If so, please type the corresponding field. If no more changes are needed, please type 'none'."
	change_needed = gets.chomp
  if change_needed == "name"
	puts "What is the new name?"
	client_design_preference[:name] = gets.chomp
  elsif change_needed == "address"
  	puts "What is the new address?"
  	client_design_preference[:address] = gets.chomp
  elsif change_needed == "age"
  	puts "Please enter the correct age."
  	client_design_preference[:age] = gets.to_i
  elsif change_needed == "number of children"
  	puts "Please enter the correct number of children."
  	client_design_preference[:number_of_children] = gets.to_i
  elsif change_needed == "spend amount"
  	puts "What is the new spend amount (numbers only)?"
  	client_design_preference[:spend_amount] = gets.to_f
  elsif change_needed == "decor theme"
  	puts "What is the client's new decor theme?"
  	client_design_preference[:decor_theme] = gets.chomp
  elsif change_needed == "prefered stores"
  	puts "What is the client's new store preference?"
  	client_design_preference[:prefered_stores] = gets.chomp
  elsif change_needed == "favorite colors"
  	puts "Please enter their new color preferences."
  	arr_colors = []
  	colors = nil 
		until colors == "done"
			puts "Please enter a color."
			client_design_preference[:favorite_colors] = gets.chomp
			puts "Do you need to enter another color? If so, type 'yes'. If not, type 'done'."
			colors = gets.chomp
  		  if colors == "yes"
  		  	arr_colors << client_design_preference[:favorite_colors] 
  		  	client_design_preference[:favorite_colors] = arr_colors
   	 	  elsif colors == "done"
  			arr_colors << client_design_preference[:favorite_colors] 
  			client_design_preference[:favorite_colors] = arr_colors
  			puts "Thank you. We are done with colors."
  		  else 
  			puts "I do not understand. Please start over."
  		  end
		end
	elsif change_needed == "none"
		puts "Looks like we're all finished here."
	else 
		puts "I don't understand. Please start over."
	end	
end

puts " "
puts " "

puts "All done! Here are your results:"
#print hash one last time before exiting to verify all changes have been made (if any were needed)
puts client_design_preference


 