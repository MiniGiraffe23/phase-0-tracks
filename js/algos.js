//RELEASE 0:
//Function that takes an array of word and returns longest word/phrase in the array
//input: array
//steps: create variable to hold the largest word
//		 sort by length or word
//output: longest word

var wordArray = ["apple", "pear", "butterfly", "bananas"];

function longestWord(worrdArray) {
	var longest = 0;
	var word = "";
	for (i = 0; i < wordArray.length - 1; i++) {
		longeset = wordArray[i].length;
		if (wordArray[i].length > longest); {
			word = wordArray[i];
		}
	}
	console.log(word)
}

longestWord(wordArray);

//returning last word not longet word - fixed. Had line 13 set to <= instead of just <

//build a function that takes two objects and checks to see if a key or value pair matches

var personOne = {name: "Steven", age :54};
var personTwo = {name: "Tamir", age: 54};

function compareObjects(objectOne, objectTwo) {
	
	}

compare(personOne, personTwo);
//can't get this function to work either
