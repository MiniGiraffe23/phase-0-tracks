#Pseudocode and write a method that take's a spy's real name and create a fake name
#-Swap first and last name
#-Change all vowels (a e i o u) to next vowel
#-Change all consonants to the next consonant in the alphabet (b c d f g h j k l m n p q r s t v w x y z)

=begin 
Possible method to swap first and last name: couldn't get to work inside method for some reason, went with split option instead
name = ["first", "last"]
name[0], name[1] = name[1], name[0]
=> "last", "first"
=end

=begin 
Possible method to change vowels/consonants to next in line:
vowels = 'aeiou'
since not many, use hash 
consonants = "bcdeghjklmnpqrstvwxyz"
consonants.next if letter = "bcdeghjklmnpqrstvwxyz
=end



def spy_name_generator(real_name)
	real_name = real_name.split(' ') #will split a string into separate substrings so 'firstname lastname' becomes 'firstname' 'last name'
	real_name = real_name.reverse! #revers will swap position of first and last word so 'last name' comes first then 'first name'.

#above separeted the two names then reversed them so last name would come before first
#now we need to put them back together
	real_name = real_name.join(' ')
	real_name
end
	
def spy_name_swap(real_name)

	vowels = "aeiou".chars #will break the string into individual characters 
	consonants = "bcdfghjklmnpqrstvwxyz".chars
	real_name = real_name.split('')

	swap = real_name.length
	swap.times do |letters|
		if vowels.include?(real_name[letters]) == true
			real_name[letters] = vowels[vowels.index(real_name[letters]) + 1]
			else
				if consonants.index(real_name[letters]) != nil
					real_name[letters] = consonants[consonants.index(real_name[letters]) + 1]
				else 
					puts " "
				end
			end
		end
	real_name.join('')
end


arr_names = []

def full_name
	name = nil

		puts "Please enter your full name (first and last only, all lowercase). Type 'done' to exit."
#loop until person hits done, which allows them to convert multiple names without having to restart the program.
		until name == "done"
			name = gets.chomp
			new_name = spy_name_generator(spy_name_swap(name)) #runs the name someone enters through the first name generator that flips first and last name then through the swap generator that swaps characters around
			p new_name
			yield(name, new_name)
				if name == true #needed to add if statement w break so program would know 'done' should not be ran through the spy_name_generator. Doesn't work. Not sure what to do. 
					break
				end
		end
end

full_name { |original_name, spy_name|
	arr_names.push(" \"#{spy_name}\" real name is actually \"#{original_name}\".")
	}

p arr_names
