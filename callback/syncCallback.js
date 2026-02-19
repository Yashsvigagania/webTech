function greet(name){
    console.log("Hello");
}
function processUserInput(callback){
    callback();
    console.log("Welcome");
}
processUserInput(greet);