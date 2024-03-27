// array = object data type that can be used to hold more than one value
//can ba a list of strings, numbers, booleans, objects or a mix
let birds = ['owl', 'eagle', 'falcon','tausi'];
console.log(birds[2]);

if(true) {
    let bird = ['owl', 'eagle', 'falcon','tausi'];
    //add an item into the list
    bird.push('quail');
    console.log(bird);
    //reomve an item (last item)
    bird.pop([-1]);
    console.log(bird);
    //adding an item at the start of the list
    bird.unshift('vulture');
    console.log(bird);
    //removing an item from index 0
    bird.shift();
    console.log(bird);
    //locating the index of an item
    a = bird.indexOf('tausi');
    console.log(a);
    //size of array
    console.log(bird.length);
}

