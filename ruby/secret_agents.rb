def encrypt(password)
#create loop advancing each character of a string one letter forward
#declare variable for use in loop
	x = 0
#initiate a loop that incremntally changes the x up to the 
#length of the password, ensuring process is run on each character

	while x < password.length	
		password[x] = password[x].next
	if password[x] == "!"
		password[x] = " "
	elsif password[x] == "z"
			password[x] = "a"
	end

	encryption = password
	x += 1
	end
   return encryption
end


def decrypt(encryption)
#declare a variable for the alphabet to use as a point of reference for 
#decryption 
 reference = "abcdefghijklmnopqrstuvwxyz"
 #define variable 
 y = 0

#initiate loop to decrypt password by using reference to reverse each character by one character
	until y == encryption.length
		encryption[y] = reference[reference.index(encryption[y]) - 1]
		# below attempt at decrypting spaces...did not work
	if encryption[y] == " "
		encryption[y] = "!"
	elsif encryption[y] =="'"
			encryption[y] = " "
		end

	decryption = encryption
		y += 1
	end 
	return decryption

end

#prompt user to decide what he/she wants to do with their password
puts "Would you like to encrypt or decrpyt your password?"
answer = gets.chomp

#prompt user to enter a password
puts " Please enter your password."
user_password = gets.chomp

#instruct to encrypt or decrypt user's password based on their choice of either 
#encrypt or decrypt	
	if answer == "encrypt"
			puts encrypt(user_password)
	elsif answer == "decrypt"
			puts decrypt(user_password)
	else
		puts "Please try again."
	end

=begin 
puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")
puts decrypt(encrypt("swordfish"))
=end