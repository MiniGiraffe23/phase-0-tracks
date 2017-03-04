=begin 6.4: RELEASE ONE
#Write a shout module
#--modules can be used across multiple classes
#Declare shout module
module Shout
	#define method for yelling angrily
	def self.yell_angrily(words) #'self' keyword needed when defining methods of standalone modules
		words + "!!!" + " :( "
	end

	def self.yell_happily(words)
		words + "!!!" + " :-) "
	end
end


puts Shout.yell_angrily("Grrr... Why'd you do that")
puts Shout.yell_happily("YAAAAY... You did it")
=end

# ----6.4: RELEASE 3 ----
#Make mixin version of the Shout module 
#Create two classes representing anything that might shout
#Include Shout module in the two classes

module Shout
	def yell_angrily(words)
		words + "!!!" + " :-O "
	end

	def yell_happily(words)
		words + "!!!" + " :-D "
	end
end

class Person
	include Shout
end

class Monster
	include Shout
end










=begin
--RESEARCH ON SELF KEYWORD--
Three golden rules:
1. use when setting or getting instance attributes inside a class def
2. use to denote a method within a class def as a class method
3. use to reference the calling objecting within an instance method def

self only has meaning in the context of a Ruby class - only be called within an 
instance method or class method
=end