#6.4: Release 2
#Declare classes for a bird and a plane

#Declare a Flight module (needs to go before declared classes)

module Flight
	#def take off method
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude}..."
	end
end

class Bird
	include Flight #pulls in flight module declared above
end

class Plane
	include Flight
end


#DRIVER CODE

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(3000)
 #mixin modules do not require self keyword, modules can be defined the same way we write instance methods in a class