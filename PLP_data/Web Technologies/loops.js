//for loop
for(let x =0; x<10; x++) {
    console.log(x);
}

//applicataion
let heads = 0;
let tails = 0;
for(let x=1;x<=10;x++) {
    if(Math.random ()< 0.5) {
        tails++;
    }else{
        heads++;
    }
}
console.log("Tossed the coin ten times");
console.log(`Number of heads: ${heads}`);
console.log(`Number of tails: ${tails}`);
//while loop
//Find out how many times you need to flip a coin until it lands on heads.
let i = 0;
while(i<6) {
    console.log(`the value of i: ${i}`);
    i++
}

/*
//infinity loop in javascript
let k = 0;
while (k<6) {
    console.log(`the opppppps of i = ${i}`);
}
*/

//Find out how many times you need to flip a coin until it lands on heads.
let flips = 0
let isHeads = false;
while (!isHeads) {
    flips++;
    isHeads=Math.random()<0.5;
}
console.log(`it took ${flips} flips to land on heads`);

