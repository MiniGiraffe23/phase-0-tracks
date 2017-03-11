# Virus Predictor

# I worked on this challenge [by myself, with: Joe Connors].
# We spent [1.25] hours on this challenge.

# EXPLANATION OF require_relative
# require relative links current file to others in the current directory
# require, on the other hand, can access any file by specifing the path 

require_relative 'state_data'

class VirusPredictor

# initializing the instance and taking in 3 arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

 private

# storage for methods to be used later specific to the topic
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 

# a method that calculates the predicted deaths based on population, density and state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


# determines the speed of spread of the virus based on population density in a state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100  
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state



STATE_DATA.each do |state, state_data|
  state_reports = VirusPredictor.new(state, state_data[:population_density], state_data[:population])
  state_reports.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin

1) What are the differences between the two different hash syntaxes in the state_data.rb file?
One set of syntax is used for keys which are strings (can be edited and changed) and one set for keys which are symbols. Symbols are the preferred syntax because they are immutable and easier to process. 

2) What does require_realtive do and how does it differ from require?
Require relative links a specific file within the same directory to your current file. Require allows you to link a current file with files outside the current directory by using a specified path.

3) How to iterate through a hash:
Use a loop or built in medthod like .each. 

4) When refactoring virus_effects method, what stood out to you about the variables?
The variables being utilized were instance varaibles and variables that had been defined earlier in the class. They also weren't needed because the method wasn't taking in any arguments but just storing the method calls that would be utilized later. 

5) What concepts did you most solidify in this challenge?
The differences between require_relative and require. Also, I'm a little more comfortable with utilizing instance variables and refactoring my code. 
=end 