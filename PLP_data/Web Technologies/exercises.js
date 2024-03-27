//exercise #1
//Try to print your name, age, and occupation on the console.
let name = "solo";
let age = 27;
let occupation = "software engineer";

console.log(name);
console.log(age);
console.log(occupation);

//exercise #2
/*
Write a program with three variables, each with the following value:
The first variable contains your name
The second variable contains your age
The third variable contains your occupation
*/
class Person {
    constructor(name, age, occupation) {
        this.name = name;
        this.age = age;
        this.occupation = occupation;
    }

    displayDetails() {
        console.log(this.name);
        console.log(this.age);
        console.log(this.occupation);
    }
}

// Create an instance of the Person class
let person = new Person("solooo", 27.5, "engineer");

// Display the details using the displayDetails method
person.displayDetails();

//exercise #3
//Guess the result of these operators in action:
console.log(19%3);
console.log(10==3);
console.log(10!=="10");
console.log(2<"10");
console.log("5">2);
console.log((false&&true)||false);

//exercise #4
/*
Create an array named colors that include the 'red', 'green, and 'blue' colors.

First, add a 'black' color after the last index of the array. Then print the array.

Next, remove the value 'red' and swap the position of 'green' and 'blue'. Print the array.

Finally, add the color 'yellow' on the first index of the array, then print the array.
*/
// Create the initial array
let colors = ['red', 'green', 'blue'];

// Add 'black' color after the last index
colors.push('black');
console.log(colors);

// Remove 'red' and swap 'green' and 'blue'
colors.splice(colors.indexOf('red'), 1);
let indexGreen = colors.indexOf('green');
let indexBlue = colors.indexOf('blue');
[colors[indexGreen], colors[indexBlue]] = [colors[indexBlue], colors[indexGreen]];
console.log(colors);

// Add 'yellow' on the first index
colors.unshift('yellow');
console.log(colors);

//exercise #5
/*
A primary school is giving different rewards based on the student's grade:

Students that got an A will get a Chocolate
Students that got a B will get a Cookie
Students that got a C will get a Candy
For any other value, print "No reward to give."
Create a variable named grade that will store the student's grade.
*/
// Prompting user for input
const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question("Enter your grade (A, B, C, or D): ", (grade) => {
    // Using if-else statements
    if (grade === "A") {
        console.log("You got an A, so here's a Chocolate for you!");
    } else if (grade === "B") {
        console.log("You got a B, here's a Cookie for you!");
    } else if (grade === "C") {
        console.log("You got a C, there's room for improvement and here's your Candy!");
    } else if (grade === "D") {
        console.log("You got a D, there's room for improvement!");
    } else {
        console.log("Invalid grade entered.");
    }

    // Using switch statement
    switch (grade) {
        case "A":
            console.log("You got an A, so here's a Chocolate for you!");
            break;
        case "B":
            console.log("You got a B, here's a Cookie for you!");
            break;
        case "C":
            console.log("You got a C, there's room for improvement and here's your Candy!");
            break;
        case "D":
            console.log("You got a D, there's room for improvement!");
            break;
        default:
            console.log("Invalid grade entered.");
    }

    rl.close();
});

//exercise #6
//Write a program that prints a half pyramid using asterisks *
for (let i = 1; i <= 5; i++) {
    let row = ''; // Initialize an empty string for each row
    for (let j = 1; j <= i; j++) {
        row += '*'; // Append asterisks to the row
    }
    console.log(row); // Print the row
}

//Next, print a reverse half pyramid as follows:
for (let q = 5; q >= 1; q--) {
    let row = '';
    for (let m = 1; m <= q; m++) {
        row += '*';
    }
    console.log(row);
}


//exercise #7
/*
Write a function named calculateSquare() that's used to calculate the area and perimeter of a square shape.

The function accepts one parameter: the side of the square.

The formula to calculate the area is side * side, and the formula to calculate the perimeter is 4 * side.
*/
function calculateSquare(side) {
    // Calculate the area
    let area = side * side;
    
    // Calculate the perimeter
    let perimeter = 4 * side;
    
    // Return an object containing both area and perimeter
    return {
        area: area,
        perimeter: perimeter
    };
}

// Example usage:
let sideLength = 8;
let square = calculateSquare(sideLength);
console.log("the square is", sideLength);
console.log("the area of the square is", square.area);
console.log("the perimeter of the square is", square.perimeter);


//exercise #8
/*
Create a person object with the following properties:

name - the person's name
age - the person's age
greet() - a function to greet another person
Inside the greet() function, introduce the person, specifying the name and the age.
*/
let user = {
    name: "soloo",
    age: 27,
    describe: function() {
        console.log(`Hello! My name is ${this.name} and I'm ${this.age} years old.`);
    }
};

// Call the describe method to log information about the person
user.describe();
