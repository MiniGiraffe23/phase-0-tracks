// 7.1 Assignment 

// fuction to reverse a string (takes string as a parameter and spits our the reverse)
//1. create an empty string to hold new  
//2. Use for loop to to iterate backward through a string and store the result in a new variable
//3. Have the function return the new string 

function reverseString(string) {
	var reversedString = "";
	for (var i = string.length -1; i >= 0; i--) {
		reversedString += string[i];
	}

	return reversedString;
}

//console.log(reverseString('pizza'));


//console.log(unicorn) test that rversed string was stored in a new variable
var string = "unicorn";
var newUnicorn = reverseString(string);

if  (string.length < 9) {
	console.log(newUnicorn);
} else {
	console.log("It is a sad day without unicorns!");
}


