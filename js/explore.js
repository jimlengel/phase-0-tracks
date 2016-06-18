// pseudocode a function that takes a string as a parameter and reverses the string.
//
// 1. count the number of characters in the string (.length)
// 2. loop through the string, starting with the last character of the variable
// 3. write the last character to the first character of a new variable
// 4. check if there are more characters. if so, continue on the same path.
// 5. when there are no more characters, the string is complete; it has been reversed.
// then...
// 1. create a varaible with a reversed string
// 2. create a new variable that reverses the reversed string
// 3. compare the two variables
// 4. if they are the same, print the new variables and that they are equal.

function reverseString(string){
	stringLength = string.length;
	var newString = ""
	var reverseString = ""

	for (var i = stringLength; i >= 0; i--) {
    newString = string.slice(i);
    newString = newString.charAt(0); 
    reverseString += newString;
	}
	return reverseString;
}

var reverseableWord = 'javascript';
var reverseIt = reverseString(reverseableWord);
var reverseItTwice = reverseString(reverseString(reverseableWord));

//console.log(reverseIt);
//console.log(reverseItTwice);

if (reverseableWord === reverseItTwice){
	console.log("The word" + reverseableWord + " is " + reverseIt + " reversed.");
} 
