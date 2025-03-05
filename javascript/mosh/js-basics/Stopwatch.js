function Stopwatch(){
    let startTime, endTime, running, duration = 0;

    this.start = function() {
        if(running)
            throw new Error("Stopwatch is already running");

        startTime = new Date();
        running = true;
    }

    this.stop = function(){
        if(!running)
            throw new Error("Stopwatch is not running");

        endTime = new Date();
        running = false;

        let seconds = ( endTime.getDate() - startTime.getDate() ) / 1000;
        duration += seconds;
    }

    this.reset = function(){
        startTime = null;
        endTime = null;
        duration = 0;
        running = false;
    }

    Object.defineProperty(this, "duration", {
        get : function(){
            return duration;
        }
    });
}