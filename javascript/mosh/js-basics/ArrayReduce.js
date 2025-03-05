
const numbers = [1, 2,-1, 3];
const sum = numbers.reduce((accumulator, current) => {
    return accumulator + current
}, 0);
console.log(sum)