## TEST CODE

require_relative 'word_game'

describe Guess_the_Word do 
	let(:guess_the_word) {Guess_the_Word.new("apple")}

#	it "gets a word from user and separates it into characters and replaces letters with blanks" do
#		expect(guess_the_word.print_word). to eq "_ _ _ _ _ " 
#	end

#	it "expects the number of guesses to equal the number of letters in the given word" do
#		expect(guess_the_word.available_guesses). to eq 5
#	end
#
#	it "takes a letter and stores it in an array" do
#		expect(guess_the_word.guessed_letters("a")). to eq ["a"]
#	end
#	
#	it "takes a guessed letter and reveals whether or not a guess is correct by displaying letter" do
#		expect(guess_the_word.game_progress("a ")). to eq "a _ _ _ _"
#	end
#end

###commented out tests originally passed, then I refactored, changed code

	it "it joines the word that was split on initialization and displays it as individual blanks" do
		expect(guess_the_word.print_word). to eq nil
	end

	it "takes a letter and determines if the letter has already been guessed, if the letter has been
		guessed then it prompts the user for another letter, if the letter hasn't been guessed then
		it adds the letter to the array, subtracts one from guesses left and reveals the hidden letter" do
		expect(guess_the_word.game_progress("a")). to eq nil
	end

	it "prints congratulatory message and ends game" do
		expect(guess_the_word.winner).to eq @game_over = true
	end

	it "prints taunting message for loser and ends game" do 
		expect(guess_the_word.loser). to eq @game_over = true
	end
end


#I need some practice with writing tests for more complex methods