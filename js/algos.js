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

var wordsPhrases = ["long phrase","longest phrase phrase phrase","longer phrase", "akjdshf aksdjlfh kljasdfh kjalshdf lkjahsdf lkjadsfh"]
var longestPhrase = longestPhraseFinder(wordsPhrases);
console.log(longestPhrase);
