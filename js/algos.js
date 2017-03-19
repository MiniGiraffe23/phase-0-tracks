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

var Steven = {name: "Steven", age : 54};
var Tamir = {name: "Tamir", age: 54};

function objectsEqual(objectOne, objectTwo) { //create array of object names
	var objectOneProps = Object.getOwnPropertyNames(objectOne);
	var objectTwoProps = Object.getOwnPropertyNames(objectTwo);
	//if each object containes the same number of properties then they are equal
	if (objectOneProps.length == objectTwoProps.length) {
		return true;
	}
	//if the values are the same in object one and two, then the objects are equal
	for (var i = 0; i < objectOneProps.length; i++) {
		var propObject = objectOneProps[i];
		
		if (objectOne[propObject] == objectTwo[propObject]) {
			return true;
		}
	}
	return false;
}

console.log(objectsEqual(Steven, Tamir));


/*Below is original attempt
function compare(objectOne, objectTwo) {
	if (objectOne === objectTwo); {
		return true; }
		}
}
compare(personOne, personTwo);
can't get this function to work, will come back and rework
*/

//Release 2: build a function that takes an integer for length
//builds and returns an array of strings of given length
//function(3) would return 3 random words of varying length
//1 letter min, max letter 10
//Math.random returns floating-point of a random number range that can be scaled to desired range 
//Math.floor, Math.

function stringArray(length) {
	var string = "";
	var letters = "abcdefghijklmnopqrstuvwxyz";
	var array = [];
	for (i == 0; i < length; i++) {

	}

}
//need help on this 
