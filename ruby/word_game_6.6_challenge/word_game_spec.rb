## TEST CODE

require_relative 'word_game'

describe word_game do 
	let(:guess_the_word) {Guess_the_Word.new("userinput")}

	it "stores the word given by player 1 on initialization" do
	expect(guess_the_word.player1_word).to eq "userinput"
	end	

	it "takes the word given by player 1 and splits it into characters"
	expect(guess_the_word.player1_word). to eq "u", "s", "e", "r", "i", "n", "p", "u", "t". 
	end

end

