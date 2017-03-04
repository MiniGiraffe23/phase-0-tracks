#create method that calculates and takes three parameters:
#integer, operator string and another integer
=begin
def calculator(x, operator, y)
	x = x.to_i # convert string to interger
	operator = operator.to_s
	y = y.to_i #convert string to integer

		if operator == '+'         #pretty sure I can refactor this 'IF' statement to make it more compact and easier to read
			calculation = x + y
		elsif operator == '-'
			calculation = x - y
		elsif operator == '*'
			calculation = x * y
		elsif operator == '/'
			calculation = x / y
		else
			puts "ERROR. Invalid input. Please try again."
		end
	return calculation #previously had this sent to print which was causing an issue when trying to pring history
end
=end

=begin
--TESTING ABOVE METHOD
puts calculator(3, '+', 2)
puts calculator(3, '*', 3)
puts calculator(4, "-", 4)
puts calculator(5, "/", 1)
-- Everything working as expected.
=end

#REFACTORED METHOD (it works!)

def calculator(x, operator, y)

	if ['+', '-', '*', '/'].include? operator
		calculation = x.send(operator.to_sym, y) #send x to object (operator which has been converted to a symbol) and y. calculation will now = x (operator) y
	else
		puts "ERROR! Invalid input. Please try again."
	end
	return calculation #previously had this set to 'print' instead of 'return' which was causing issues when needing to print a history of values returned
end


=begin
--TESTING ABOVE METHOD
puts calculator(3, '+', 2) 5
puts calculator(3, '*', 3) 9
puts calculator(4, "-", 4) 0
puts calculator(5, "/", 1) 5
puts calculator(5, 5 , 5) Error! Invalid input. Please try again. 
-- Everything working as expected.
=end

#Now to add USER INTERFACE
#Provide information about the system so user knows what it can/cannot do
puts "Hello. Let me help you out with your math! I can do addition (+), subtraction (-), multiplication (*), and division (/)!"

#Prompts user to enter a calculation that will be ran through the method; make loop to allow user to input multiple entries
user_input = nil
status = nil

history = []

until status == 'done'
	puts "Please enter your calculation:"
	user_input = gets.chomp #gets input from user in form of string
	values = user_input.split(" ")#breaks string into 3 words since calculator method requires 3 arguments
	answers = calculator(values[0].to_i, values[1], values[2].to_i)
	puts answers
	history.push("#{user_input} = #{answers}")
	puts "\nType 'done' if you are finished, otherwise hit enter."
	status = gets.chomp
end

total_calculations = history.count #history.count will count the total number of user inputs so we can print them later using the variable 'total_calculations'
puts "You have performed #{total_calculations} calculation(s):"
history.each do |result| 
	puts result 
end
###YEEESSSSS, it works!###

