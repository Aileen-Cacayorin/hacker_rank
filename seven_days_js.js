// Switch Statements
//Do not declare variable num.
//Write your code below this line.

switch(num) {
    case 1:
        console.log("ONE");
        break;
    case 2:
        console.log("TWO");
        break;
    case 3:
        console.log("THREE");
        break;
    case 4:
        console.log("FOUR");
        break;
    case 5:
        console.log("FIVE");
        break;
    case 6:
        console.log("SIX");
        break;
    case 7:
        console.log("SEVEN");
        break;
    case 8:
        console.log("EIGHT");
        break;
    case 9:
        console.log("NINE");
        break;
    default:
        console.log("PLEASE TRY AGAIN");
        break;
}

// 7 days of JS Week 2

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
