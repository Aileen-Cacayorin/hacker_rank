// LOOPS
// complete the function
function vowelsAndConsonants(s) {
    var vowels = ["a", "e", "i", "o", "u"];
    var vowelsList = [];
    var consonants = [];
    var foo = input.split("");
    for (var i = 0; i < foo.length; i++) {
       var letter = foo[i];
       if (vowels.indexOf(letter)!==-1) {
            vowelsList.push(letter);
        } else {
            consonants.push(letter);
       };
    };
    vowelsList.forEach(function(vowel){
        console.log(vowel);
    });
    consonants.forEach(function(consonant){
        console.log(consonant);
    })
}

// REGEX
var re = /^([aeiou])[a-z]+\1$/;
