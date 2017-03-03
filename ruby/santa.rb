#Build a Santa class
#Include following methods:
# --- Speak: prints "Ho, ho, ho! Haaaappy holidays!"
#---- Eat milk and cookies: takes cookie type as parameter and prints "That was a good #cookie type!"
#---- Initialize: prints "Initializing Santa instance..."
#Add code below class declaration to check initialize instance and methods work

class Santa

	def initialize
		puts "Initializing Santa instance..."
		Santa
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
		cookie_type
	end

end
#DRIVE CODE
#mike = Santa.new
#mike.speak
#mike.eat_milk_and_cookies("chocolate chip")