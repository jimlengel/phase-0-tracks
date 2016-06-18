//Paired with Jim Lengel
//Release 0

// Declaring two arrays

var colors = ['yellow', 'violet', 'green', 'blue'];
var horseNames = ['Chip', 'Buck', 'Ocho', 'Seabiscuit'];

colors.push('red');
horseNames.push('Admiral');

//here's how we're going to loop through each one, using i as an index
//initializing the object once (outside of the loop)
var horseColorsAndNames = {};

for (var i=0; i < colors.length; i++) {

	var currentColor = colors[i];
	var currentName = horseNames[i];
	horseColorsAndNames[currentName] = currentColor;
}

console.log(horseColorsAndNames);

//DRIVER CODE

//var horse1 = {name: 'Chip', 'age': 4, gallopsFast: true};
//horse1.age
//console.log(horse1['name']);

//RELEASE 2
//Constructor Function for a Car

function Car(make, model, year) {
	console.log("Our new car:", this);
	
	this.make = make;
	this.model = model;
	this.year = year;

	this.speed = function() { console.log("Go Fast!"); };
	this.oilChange = function() { console.log("Change Oil."); };
	console.log("CAR INITIALIZATION COMPLETE.");
}

//DRIVER CODE
var ourCar = new Car('Tesla', 'model 3', 2016);
var anotherCar = new Car('Toyota', 'Camry', 2006);
var yetAnotherCar = new Car('Volkswagen', 'Golf', 2013);

console.log(ourCar);
ourCar.speed();
ourCar.oilChange();
console.log("----")

console.log(anotherCar);
anotherCar.speed();
anotherCar.oilChange();
console.log("----")

console.log(yetAnotherCar);
yetAnotherCar.speed();
yetAnotherCar.oilChange();
console.log("----")


//Release 3
//use `.push` method to push the variables into an array to 
//Constructor functions make it easy to create an object, but they pose a challenge if you were to try to loop through the instances.
