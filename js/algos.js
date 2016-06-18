// In algos.js, write a function that takes an array of words or phrases 
// and returns the longest word or phrase in the array. 
// So if we gave your function the array of 
// ["long phrase","longest phrase","longer phrase"], 
// it would return "longest phrase". 
// This is a logical reasoning challenge, 
// so try to reason through this based on what you already know, 
// rather than Googling the fanciest solution or looking up built-in sorting functions. 
// Note that "some string".length will do what you expect in JS.
// Add driver code that tests your function on a few arrays.


// RELEASE 0

// 1. go through the words or phrases in the array and find the length of each, starting with the first.
// 2. if the length of the current item is greater than the length of the previous item, mark it as the longest item
// 3. after all the items have been cycled through, the one marked as longest will be the longest.

function longestPhraseFinder(wordsPhrases) {

	var longestOne = ""
	var longestLength = 0
	var currentLength = 0

	for (var i=0; i < wordsPhrases.length; i++) {
		
		if (wordsPhrases[i].length > longestLength) {
			longestLength = wordsPhrases[i].length;
			longestOne = wordsPhrases[i];
		}
	}

	return longestOne;
}

var wordsPhrases = ["one word","three words","two words", "so many words!!!"]
var longestPhrase = longestPhraseFinder(wordsPhrases);
console.log("The longest phrase is: " + longestPhrase);

console.log("- - - - - - -\n");
// RELEASE 1, find a key-value match (and return true)

// in a function, 
// compare the first key to the first key of the second object
// 			if there is a match, compare the values
//			if the value is the same, mark this as TRUE, that there is a key-value match
// cycle through the remaining keys until all have been compared, as above
// if no keys match, write that there is no key-value match

function keyValueMatch(personOne, personTwo){

	var personOneKeys = Object.keys(personOne);
	var personTwoKeys = Object.keys(personTwo);

	for (var i=0; i < personOneKeys.length; i++) {
	//	console.log(personOneKeys);
		//	console.log(personTwoKeys);
			for (var j=0; j < personTwoKeys.length; j++) {
						if (personOneKeys[i] == personTwoKeys[j]) {
							//console.log(personOneKeys[i] + " is a match.");
							var keyOne = personOne[personOneKeys[i]];
							var keyTwo = personTwo[personTwoKeys[j]];
							//console.log("The first key is " + keyOne);
							//console.log("The second key is " + keyTwo);
								if (keyOne == keyTwo) {
									return true;
									//console.log("And the values match, too! \n")
								} else {
									return false;
									//console.log("But the values don't match. \n")
								}
						}
				
			}
	}
}
var personOne = {age: 64, name: "Tamire", flower: "rose"};
var personTwo = {name: "Tamir", age: 64, flower: "rose"};
console.log(keyValueMatch(personOne, personTwo));



	
