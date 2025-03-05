//1. when called this  in method refers to current object that is running
//2. when called this in function refers to Window object in browser or global object in Node

const video={
    title:'video1',
    play(){
        console.log(this)               // 1
        console.log('Playing video');
    }
}

video.stop = function(){
    console.log(this)                   // 1
    console.log('stopping video');
}

video.play();
video.stop();


function video1(){
    console.log(this)                   // 2
    console.log('playingVideo')
}

function Video(title){
    title = title;
    console.log(this)
}

const video2 = new Video('a') //this will construct an empty object {} then assign the title passed. Constructor

const video3={
    title:'video1',
    tags : ['a', 'b','c'],
    showtags(){
        this.tags.forEach(function(tag){
            console.log(tag);
        })
    }
}

video3.showtags();

const video4={
    title:'video1',
    tags : ['a', 'b','c'],
    showtags(){
        this.tags.forEach(function(tag){
            console.log(this.title,tag);        // this.title will print undefined because this annonymous function belongs to Window
        })
    }
}

video4.showtags();

const video5={
    title:'video1',
    tags : ['a', 'b','c'],
    showtags(){
        this.tags.forEach(function(tag){
            console.log(this.title,tag);        // this.title will print undefined because this annonymous function belongs to Window
        },this)
    }
}

video5.showtags();