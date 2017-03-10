var colors = ["blue", "red", "yellow", "green"];

var horseName = ["Mr. Ed", "Joey", "Sadie", "Sea Biscuit"];

colors.push("purple");
horseName.push("Buster");

//console.log(colors);
//console.log(horseName);

//RELEASE ONE

var horses = {};
for (var i = 0; i < horseName.length; i++) {
	horses[horseName[i]] = colors[i];
}

console.log(horses);

//RELEASE TWO - constructor function for a car

function Car(make, model, year) {
	console.log("Our new car:", this);
		this.make = make;
		this.model = model;
		this.year = year;
		this.start = function() {console.log("Vroom!"); };

	console.log("CAR INITIALIZATION COMPLETE");
}

