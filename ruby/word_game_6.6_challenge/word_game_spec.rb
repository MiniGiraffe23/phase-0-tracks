## TEST CODE

require_relative 'word_game'

describe Guess_the_Word do 
	let(:guess_the_word) {Guess_the_Word.new("userinput")}

	it "stores the word given by player 1 on initialization" do
	expect(guess_the_word.print_word).to eq "u", "s", "e", "r", "i", "n", "p", "u", "t"
	end	
end

