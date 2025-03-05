const numbers = [1, 2,-1, 3];
const filtered = numbers
.filter(n => n > 0)
.map(n => ({value : n}));
console.log(filtered)