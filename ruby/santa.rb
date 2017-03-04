#Build a Santa class
#Include following methods:
# --- Speak: prints "Ho, ho, ho! Haaaappy holidays!"
#---- Eat milk and cookies: takes cookie type as parameter and prints "That was a good #cookie type!"
#---- Initialize: prints "Initializing Santa instance..."
#Add code below class declaration to check initialize instance and methods work


class Santa
	#interface to make instance variables available outside method
	attr_reader :ethnicity, :name
	attr_accessor :gender, :age, :reindeer_ranking #give both getter and setter
	#attr_writer - makes it writable but not readable

	def initialize(gender, ethnicity, name)
		puts "Initializing Santa instance..."
	#instance variable give state data
	#available anywhere inside any instance method of a class
	#these are attributes
		@name = name
		@gender = gender 
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
			"Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140) #picks a random number from 0 to 140 
	end

	def about	
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Age: #{@age}"
		puts "Name: #{@name}"
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie_type) #takes cookie type returns in sentence 
		puts "That was a good #{cookie_type} cookie!"
		cookie_type
	end
#Initial Test Code
#mike = Santa.new("")
#mike.speak
#mike.eat_milk_and_cookies("chocolate chip")

	def celebrate_birthday 
		@age += 1
	end

	def get_mad_at(reindeer) #method that takes a reindeer name and deletes it from current position then pushes it to end of the list

		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
		p @reindeer_ranking
	end
=begin
#setter methods
#able to change from outside the class
	def gender=(new_gender)
		@gender = new_gender
	end
=end

end

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ['black', 'white', 'latino', 'Japanese', 'Korean', 'prefer not to say', 'Unicorn', 'Butterfly', 'N/A']
names = ["Ben", "Tom", "Frodo", "Vigo", "Jodi", "Sam", "Mad Max", "Bilbo", "Jolly Muffin Eater", "Evil Santa", "Rocker Santa", "Glitter Fairy", "Legalos", "Gandolf the Jolly"]
reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
			"Comet", "Cupid", "Donner", "Blitzen"]
#add reindeer array so below loop can take a random reindeer name and run through the get_mad_at method

	1000.times do |make_santas|
		make_santas = Santa.new(genders.sample, ethnicities.sample, names.sample)
		make_santas.get_mad_at(reindeer.sample) #make code take random reindeer name to run through gets_mad_at so all Santas don't have the same reindeer order; will display original ranking and then altered ranking
		p make_santas
	end
#hehe, 1000 santas.

=begin EARLIER TEST CODE
ben = Santa.new("bigender", "white")
ben.about
ben.speak
ben.eat_milk_and_cookies("Peanut Butter")
#make instance variables readable
#getter methods 
ben.gender = "female"
puts "#{ben.gender} is fun"

ben.celebrate_birthday

p ben.age
ben.get_mad_at("Rudolph")
puts
ben.get_mad_at("Blitzen")
puts
ben.get_mad_at("Dasher")
=end

=begin
More Test Code

bilbo = Santa.new("male", "latino", "Bilbo")
bilbo.about
bilbo.speak
bilbo.eat_milk_and_cookies("Fudge")
bilbo.get_mad_at("Dasher")
bilbo.celebrate_birthday
bilbo.gender = "female"
=end
