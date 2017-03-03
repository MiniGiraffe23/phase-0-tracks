#Build a Santa class
#Include following methods:
# --- Speak: prints "Ho, ho, ho! Haaaappy holidays!"
#---- Eat milk and cookies: takes cookie type as parameter and prints "That was a good #cookie type!"
#---- Initialize: prints "Initializing Santa instance..."
#Add code below class declaration to check initialize instance and methods work


class Santa
	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
	end

	def initialize(gender, ethnicity)
		
	#instance variable give state data
	#available anywhere inside any instance method of a class
	#these are attributes
		@gender = gender 
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
			"Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
		cookie_type
	end


end

santas = []

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ['black', 'white', 'latino', 'Japanese', 'Korean', 'prefer not to say', 'Unicorn', 'Butterfly', 'N/A']


2.times do |make_santas|
	santas << Santa.new((genders).sample, (ethnicities).sample)
	p make_santas
end

ben = Santa.new("bigender", "white")
ben.about
ben.speak
ben.eat_milk_and_cookies("Peanut Butter")






#DRIVE CODE
#mike = Santa.new("")
#mike.speak
#mike.eat_milk_and_cookies("chocolate chip")

