//Object literal {}
//Boolean literal true,false
//String literal '',""
//Template literal backticks ``

const message1 = 'first line \n second line';
console.log(message1)
console.log('==============')
const message2 = 'first line \n'+ 
        'second line';
console.log(message2)
console.log('==============')
const message3 = 'first line \n'+ 
        '\'second\' line';
console.log(message3)
console.log('==============')

//With Template literal backticks ``
const message4 = `first line
second line`;
console.log(message4)
console.log('==============')
const message5 = `first line
'second' line`;
console.log(message5)
console.log('==============')

const emailMessage1 = `Hi Kiran,

Thanks for joing the meeting

Thanks
Kiran`;
console.log(emailMessage1)
console.log('==============')

let name = 'Vijay';
const emailMessage2 = `Hi ${name},

${2+3}

//we can call a function that returns some value

Thanks for joing the meeting

Thanks
Kiran`;
console.log(emailMessage2)
console.log('==============')