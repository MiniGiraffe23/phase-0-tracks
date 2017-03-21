console.log("Yay, it works!");

var background = document.getElementsByTagName('body');

background[0].style.backgroundColor = "blue";

background[0].style.color = "white";

var links = document.getElementsByTagName('a');

for (var i = 0; i < links.length; i++) {
	links[i].style.color = "white";
	}