#Write a shout method

#Declare shout method
module Shout
	#define method for yelling angrily
	def self.yell_angrily(words) #'self' keyword needed when defining methods of standalone modules
		words + "!!!" + " :( "
	end
end

