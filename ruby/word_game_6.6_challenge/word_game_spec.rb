## TEST CODE

require_relative 'word_game'

describe Guess_the_Word do 
	let(:guess_the_word) {Guess_the_Word.new("apple")}

	it "gets a word from user and separates it into characters" do
		expect(word_to_guess.chars("apple")). to eq ["a", "p", "p", "l", "e"]

end

