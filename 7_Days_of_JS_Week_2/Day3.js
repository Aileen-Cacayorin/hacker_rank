//  Day 3 Object Oriented JS - Constructors
// Create a constructor function that satisfies the following conditions:
// The name of the constructor function should be Car.
// It should take three parameters: name, mileage and max_speed.
// Store these parameter values in their respective this keywords: this.name, this.mileage and this.max_speed.
// --------------------------------------
function Car(name, mileage, max_speed) {
    this.name = name;
    this.mileage = mileage;
    this.max_speed = max_speed;
}

//Don't edit anything below this line.
function processData(input) {
    var my_car = new Car(input[0], input[1], input[2])
    console.log(my_car.name);
    console.log(my_car.mileage);
    console.log(my_car.max_speed);
}


process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input.split(" "));
});

//  Day 3 Object Oriented JS - Constructors
// You are given a function, SquareSquare, that takes four parameters, AA, BB, CC and DD, denoting the length of the square's edges.
// Using prototype properties, add a method to SquareSquare named isSquareisSquare that prints true if a Square object has equal edges and false if they are unequal.
// --------------------------------------
function Square(A, B, C, D){
    this.A = A;
    this.B = B;
    this.C = C;
    this.D = D;
}
//Write Your Code Below This Line

Square.prototype.isSquare = function() {
    if ((this.A === this.B) && (this.A === this.C) && (this.A === this.D)) {
        console.log("true");
    } else {
        console.log("false");
    };
}

//Don't Edit Code Below This Line
function processData(input) {
    var sq1 = new Square(input[0], input[1], input[2], input[3]);
    sq1.isSquare();

    console.log(Object.getPrototypeOf(sq1));
}

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   _input = _input.split(' ').map(num => Number(num));
   processData(_input);
});

//  Day 3 Object Oriented JS - Prototype Inheritance
// You are given 33 functions: AlphaAlpha, VowelVowel, and ConsonantConsonant.
// Your task is to fill in the blanks (__________________________), so that both VowelVowel and ConsonantConsonant inherit their properties and methods from AlphaAlpha.
// --------------------------------------

function Alpha(){}

Alpha.prototype.isAlpha = function(letter){
    return /^[a-zA-Z]$/.test(letter);
};

function Vowel(){}
Vowel.prototype = new Alpha()  //Write in blank to inherit from Alpha

Vowel.prototype.isVowel = function(letter){
    return /^[aeiuoyAEIOUY]$/.test(letter);
};


function Consonant(){}
Consonant.prototype = new Alpha() //Write in blank to inherit from Alpha

Consonant.prototype.isConsonant = function(letter){
    return /^[^aeiouyAEIOUY]$/.test(letter);
}


function processData(input) {
    var a = new Alpha();
    console.log(`'${input[0]}' is ${a.isAlpha(input[0])? ``: `not `}a letter.`);

    var b = new Vowel();
    console.log(`'${input[1]}' is ${b.isAlpha(input[1])? `a letter ${b.isVowel(input[1])? `and`: `but not`} a vowel.`: "not a letter."} `);

    var c = new Consonant();
    console.log(`'${input[2]}' is ${c.isAlpha(input[2])? `a letter ${c.isConsonant(input[2])? `and`: `but not`} a consonant.`: "not a letter."} `);

}

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input.split(' '));
});


//  Day 4 Object Oriented JS - Closure
// Your task is to fill in the blank (_______________________) spaces.
// The multipliermultiplier function takes a single parameter, xx, and returns an anonymous function that takes a single parameter, yy, and returns the product of xx and yy (i.e.: x×yx×y).
// --------------------------------------
function multiplier(x) {
    return function (y) {
        return (x*y);
    } ;

}

function processData(input) {
    var waterWeight = multiplier(1);
    var mercuryWeight = multiplier(1.355);
    var oilWeight = multiplier(0.900);

    console.log("Weight of " + input + " metric cube of water = " + waterWeight(input) + " kg");
    console.log("Weight of " + input + " metric cube of mercury = " + mercuryWeight(input) + " kg");
    console.log("Weight of " + input + " metric cube of oil = " + oilWeight(input) + " kg");
}

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(Number(_input));
});
