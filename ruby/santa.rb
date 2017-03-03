#Build a Santa class
#Include following methods:
# --- Speak: prints "Ho, ho, ho! Haaaappy holidays!"
#---- Eat milk and cookies: takes cookie type as parameter and prints "That was a good #cookie type!"
#---- Initialize: prints "Initializing Santa instance..."
#Add code below class declaration to check initialize instance and methods work

class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
	#instance variable give state data
	#available anywhere inside any instance method of a class
	#these are attributes
		@gender = gender 
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
			"Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0

		Santa
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
		cookie_type
	end

	def about
		puts "Name: #{@name}"
		puts "Location: #{location}"

end
#DRIVE CODE
#mike = Santa.new("")
#mike.speak
#mike.eat_milk_and_cookies("chocolate chip")