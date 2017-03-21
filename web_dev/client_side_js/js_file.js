console.log("Yay, it works!");

var background = document.getElementsByTagName('body');

background[0].style.backgroundColor = "blue";

background[0].style.color = "white";

var links = document.getElementsByTagName('a');

for (var i = 0; i < links.length; i++) {
	links[i].style.color = "white";
	};

var newParagraph = document.createElement('p');
var paragraphText = document.createTextNode("This is a new paragraph!");
newParagraph.appendChild(paragraphText);

var firstHeading = document.getElementById('firstHeading');
firstHeading.appendChild(newParagraph);

var headings = document.getElementsByClassName('hide_me');

for (var i = 0; i < headings.length; i++) {
	//headings[i].hidden = true;
	headings[i].style.display = "none";
};

function displayText() {
  for (var i = 0; i < headings.length; i++) {
	headings[i].style.display = "block"; 
	}
};

var button = document.getElementById('button');
button.addEventListener("click", displayText);

