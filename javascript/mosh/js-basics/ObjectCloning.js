const circle = {
    radius : 30,
    draw(){
        console.log('draw');
    }
}

// const another = {};
// for(let key in circle){
//     another[key] = circle[key];
// }

const another1 = Object.assign({}, circle);
console.log(another1);

const another2 = Object.assign({'color' : 'red'}, circle);
console.log(another2);

const another3 = {...circle};
console.log(another3);