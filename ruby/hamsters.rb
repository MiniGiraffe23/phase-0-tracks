puts "What is the hamsters name?"
	name=gets.chomp

puts "What is the volume level? (1-10)"
	volume=gets.to_i

puts "What color is the fur?"
	color=gets.chomp

puts "Is the hamster a good candidate for adoption (Yes or No)"
	candidate=gets.chomp

puts "What is the hamster's estimated age?"
	age=gets.chomp 
	if age == ''
		age = nil
	else
		age = age.to_f
	end


puts "The hamster's name is #{name}"

puts "The hamster's volume level is #{volume}"

puts "The hamster has #{color} fur"

if candidate == "yes"
	puts "Hamster is a good candidate for adoption"
else
	puts "Hamster is not a good candidate for adoption"
end




	if age == nil
		puts "The hamster's age is unknown"
	else
		puts "The hamster is #{age} years old"
	end