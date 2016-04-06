//  Day 4 Object Oriented JS - Callbacks
// Write a myFiltermyFilter function that takes 22 parameters: my_arraymy_array and callbackcallback.
// Here, my_arraymy_array is an array of strings and callbackcallback is a function that takes the elements of my_arraymy_array as its parameter and returns a boolean true if the element is even or false if the element is odd.
// The myFiltermyFilter function should return the filtered array.
function myFilter(my_array, callback){
    var new_array = []
    for  (var index in my_array) {
        if (callback(my_array[index])) {
            new_array.push(my_array[index]);
        };
    };
    return new_array
}

function processData(inputArray) {
    //In blank write anonymous function, which takes one parameter and returns true if its even or false if its odd.
    console.log(myFilter(inputArray, (x) => (x%2 === 0) ));
}

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input.split(' ').map(num => Number(num)));
});

// //  Day 4 Object Oriented JS - Currying
// You are given partially completed code. Your task is to fill in the blanks (_______).
// Here, pressurepressure is a function that contains nested arrow functions taking single arguments.
// --------------------------------------

function processData(input) {

  "use strict"
  let pressure = (gravity) => (mass) => (height) => gravity * mass * height;
  let m = input[0];   //m : stores value of mass.
  let g = input[1];   //g : stores value of gravity.
  let h = input[2];   //h : stores value of height.

  let accelerationDueToGravity = pressure(g);  //Blank should be replaced by a function which takes a single argument.
  let particleMass = accelerationDueToGravity(m); //Blank should be replaced by a function which takes a single argument.
  let particleHeight = particleMass(h);    //Blank should be replaced by a function which takes a single argument.

  let totalPressure = particleHeight;

  console.log(totalPressure);

}

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
  _input += input;
});

process.stdin.on("end", function () {
 processData(_input.split(' ').map(num =>Number(num)));
});
