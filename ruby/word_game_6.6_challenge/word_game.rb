#Word guessing game - like Hangman
#Driver code handles all user input and output (all user interaction done throug UI)
# Define Game class
# Define initialize method
# Define print_word method
# input: takes a string (one word) that user inputs
# steps: 
	# split words into individual characters
	# return input word as blank spaces
# output: word split into separate characters and returned as blank spaces

## Method to store guessed letters and keep track of gueses
# Keep track of user's guesses (store in array) - can't get to work
	# number of guesses equals the length of the word
	# same guess does not count against the user - need array or hash to get this to work
# input: letters guessed by user 2
# steps: add guessed letter to guess array
# output: updated array

# Method to track progress (guessed vs word)
# input: guessed letter
# steps: If letter guessed is correct, display that character in the word
# 		 If letter guessed is wrong, continue displaying words with blank
# output: string showing the user correct guesses and telling them how many guesses they have left


# Method to tell if word has been guessed 
# input: word. characters guessed
# steps: Compare words to characters guessed, if there are still _ in place of letters 
#        then word has not been guessed
# 		 All characters revealed mean word guessed and player won

# Method to determine if game is over
# input: word guessed, guess attempts
# steps: If length of guesses in the array equals length of word then game over
#        If word has been guessed then game is over
# output: string telling the user if they've won or lost

#USER INTERFACE
#Welcomes players to game
#Describes the rules
#Gets user input of one word from player one
#Asks player 2 for guesses until the reach guess limit or guess the word
class Guess_the_Word
		attr_reader :word

	def initialize(word)
		@word = word
		@game_over = false	
	end

	def print_word
		'_ ' * word.chars.length
	end

	def available_guesses
		available_guesses = @word.length
		@available_guesses = available_guesses
	end

	def game_progress(letter_guessed)
			display_letter = ""
		 @word.chars.each do |letter|
		 	if letter_guessed.include?(letter)
		 		display_letter << letter
		 	else 
		 		display_letter << " _"
		 	end
		 end
		 @display_letter = display_letter
	end


end

