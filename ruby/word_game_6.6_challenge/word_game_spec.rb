## TEST CODE

require_relative 'word_game'

describe Guess_the_Word do 
	let(:guess_the_word) {Guess_the_Word.new("apple")}

	it "gets a word from user and separates it into characters and replaces letters with blanks" do
		expect(guess_the_word.print_word). to eq "_ _ _ _ _ "
	end

	it "expects the number of guesses to equal the number of letters in the given word" do
		expect(guess_the_word.available_guesses). to eq 5
	end

	it "takes a guessed letter and reveals whether or not a guess is correct by displaying letter" do
		expect(guess_the_word.game_progress("a ")). to eq "a _ _ _ _"
	end
end

