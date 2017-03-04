#6.2

#Declare puppy class
#Methods to include: initialize, fetch, roll over, dog years converter, shake (create own)




class Puppy

	def initialize
		puts "Initializing new Puppy instance"
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times do |woof| #loops through wood based on the interger given
  		puts "Woof!"
  	end
  end

  def roll_over
  	puts "*Roll over*"
  end

  def dog_years(human_years)
  	dog_year = human_years * 7 #takes human years given and multiples by 7 to return dog years (each humana year equals 7 dog years)
  	dog_year
  end

  def shake(name)
  	puts "Shakes #{name}'s hand"
  end

end

#DRIVER CODE
puppy = Puppy.new
puppy.fetch("Bone")
puppy.speak(5)
puppy.roll_over
puts puppy.dog_years(3)
puppy.shake("jays")

#Create own class with an initialize method and two methods of choice
class Candy

	def initialize
		puts "Initializing candy instance..."
	end

	def pick_type_of_candy(candy_type)
		puts "I choose #{candy_type}!"
	end

	def eats_candy(candy)
		puts "I am now eating #{candy}!"
	end

end
#__TEST CODE__
#candy = Candy.new
#candy.pick_type_of_candy("Reeses")
#candy.eats_candy("Reeses")


#Create loop that makes 50 instances of candy class
candies = []
50.times do
	candies << Candy.new #store data from loop into and array
end

#iterate over data structure and call instance methods (picks type of candy and eats candy)
candies.each do |methods|
	methods.pick_type_of_candy("Reeses")
	methods.eats_candy("Reeses")
end

#will print "I choose Reeses!" and "I am now eating Reeses!" 50 times 

















