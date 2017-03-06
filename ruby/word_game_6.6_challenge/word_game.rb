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
		attr_reader :word, :game_over

	def initialize(word)
		@word = word
		@guess_count = 0
		@guessed_letters = []
		@game_over = false	
	end

	def print_word
		'_ ' * word.chars.length
	end

	def guessed_letters(letter)
		@guessed_letters.push(letter)
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

	def winner
		put #congragulatory message here
		@game_over	= true
	end

	def loser
		#if guess count == 0 and display_letter != word
		#put taunting message here
		@game_over = true

	end

end

#---USER INTERFACE---

puts "Welcome to Guess the Word!"
puts "Here are the Rules:"
puts "Player One enters a word."
puts "The entered word will appear on the screen in the form of blanks. Each blank represents a letter."
puts "Player Two tries to guess the word by entering a letter."
puts "The number of guesses is limited to the number of letters in the word provided by Player One. 
	  If Player One enters 'apple' then Player Two has 5 available guesses."
puts "The game ends when Player Two guesses the word correctly or reaches the guess limit."
puts "Let the game begin!"

players_word = gets.chomp
guess_the_word = Guess_the_Word.new(players_word)






#guess_the_word = Guess_the_Word.new("apple")
#p guess_the_word.print_word
#p guess_the_word.available_guesses
#p guess_the_word.game_progress("p")
#p guess_the_word.available_guesses