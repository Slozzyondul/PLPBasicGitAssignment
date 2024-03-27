//object = special data type that allows one to store more than one value just like an array
//also property key as the name and value
let myBook = {
    title: "JavaScript intro",
    author: "solo",
    describe: function() {
        console.log(`book title: ${this.title}`);
        console.log(`book author: ${this.author}`);
    }
    
}
myBook.describe();
//add details to mybook
myBook.year = 2023;
myBook["publisher"] = "code with slozzy";
console.log(myBook);

//modify object properties
//change author name
myBook.author = "mr ondula";
console.log(myBook);

//deleting object properties
delete myBook.year;
console.log(myBook);

//checking if a property exists in an object
//check if age exists
console.log('age' in myBook);


