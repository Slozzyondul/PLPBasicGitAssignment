//methods = functions called from an object
//creating functions
function greet(){
    console.log("hi there");
}
greet()

//parameters
function greet1(name) {
    console.log(`hi ${name}!`);
}
greet1('solo');

// more parameters
function greet2(name, weather) {
    console.log(`hi ${name}!`);
    console.log(`its ${weather} today, huh!`);
}
greet2('slozzy', 'windy');

//return statement
function sum(a,b) {
    return a + b;
}
let result = sum(21,34);
console.log(result);

//age checker
function checkAge(age) {
    if (age>18) {
        return 'you may get a car license';
    }
    return "not old enough for a license yet";
}
console.log(checkAge(27));
console.log(checkAge(16));

//rest parameter = accept any number of data as its arguments
function printArguments(...args) {
    console.log(args);
}
printArguments("a", "b", "c", "d", "E");
printArguments(1,3,4,5,6,7,8,8,8,8,9,5);

