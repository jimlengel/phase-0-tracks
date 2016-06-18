// pseudocode a function that takes a string as a parameter and reverses the string.
//
// count the number of characters in the string (.length)
// loop through the string, starting with the last character of the variable
// write the last character to the first character of a new variable
// check if there are more characters. if so, continue on the same path.
// when there are no more characters, the string is complete; it has been reversed.

function reverseString(string){
	stringLength = string.length;
	//console.log(stringLength);
	var new_string = ""
	var reverse_string = ""

	for (var i = stringLength; i >= 0; i--) {
    //console.log(i);
    //console.log(string.slice(i));
    new_string = string.slice(i);
    new_string = new_string.charAt(0) 
    //console.log("character: " + new_string);
    reverse_string += new_string;
    //console.log("reversed: " + reverse_string);
	}
	//console.log("reversed: " + reverse_string);
	return reverse_string;
}

var reverseIt = reverseString('happy');

console.log(reverseIt);
