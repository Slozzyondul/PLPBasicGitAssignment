
console.log("welcome solo to js");
//log () function = prints whatever is put inside the parentheses
//console = object with standalone property that gives access to certain functionalities

//statements  = single instruction for the computer to run
console.log("hello amazing people"); console.log("am now into js, this is incredibly unbelivable at a personal level though");

//comments = ext we use to communicate the context of the code written in the file
//this is a comment

//execution flow = top-down approach
console.log("gracias");
console.log("who invented programming, its really great learning new language, hopefully i will come up with something tremendous to solve a real world problem");
console.log(34);
console.log(192318);
console.log(98078943843879846987485384563487857435687437658743674832);

/*
//javascript variables
let message = "hello amazing world!"
console.log(message)


message = "hello wonderful earthling inhabitors!"
console.log(message)
message = "what happened to the earth we once knew as kids growing up!"
console.log(message)
*/

//variable  naming (camelCase and snake_case)

//constant variable = stores a value that never changes
const FILE_SIZE_LIMIT = 3000
const Max_speed = 1024

// var = declare variables with a global scope
// principles of least exposure = dont expose any part of your program thats unnecessary
// block scope = a variable is exposed and accessible only in parts of your codebase that require the variable
// a variable declared using the let keyword is identical to a variable declared using var except for the scope level

if(true) {
    let name = "solo";
    console.log(name)
}

//data types = specifications about what you can and cant do eith data(strings, numbers, booleans, null, undefined)
//strings = characters
//numbers (integers and floats)
//boolean = true or false
//undefined = a variable that hasnt been assigned any vakue yet
let first_name;
console.log(first_name);
//null 
let last_name = null;
console.log(last_name);

/*
//type conversison and coercion
// type coversion/ type casting = changing data from one type to another
//functions in type casting - number(), string(), boolean()

//type coercion = is a process where a value of one type is implicitly converted into another type
console.log(1 + "2");
b = [1,2] + "3";
console.log(b);
console.log(true + "45");

c = {a: 1} + "1";
console.log(c);

d = "1" + {solo:1};
console.log(d);

e = true + {a:2};
console.log(e);

f = {a:3} + 1;
console.log(f);
*/

/*
//boolean and numeric
a = true + 34;
console.log(a);

b = false + 23;
console.log(b);

c = [1,2] + 1;
console.log(c);

//convert a string into an integer
if(true) {
    let price = "50";
    let tax = 5;
    let totalPrice = Number(price) + Number(tax);
    console.log(totalPrice);
}
*/

//operators
//perform operations on the data
//arthimetic operators
// addition (+), subtraction(-), multiplication(*), exponentiation(**), division(x/y), remainder(%), increment(x++), decrement(x--)
//x=y assignment
// x+=y same as x = x+y

//logical operators
//x && y true of x and y hold the condition
//x||y or 
//!x not

/*
console.log(true && false);
console.log(false||false);
console.log(!true);

//typedef operator = check the data type 
console.log(typeof true);

*/

