function greet(name){
    console.log("Hello"+name);
}
function processUserInput(callback){
    let name="yashsvi";
    callback(name);
}
processUserInput(greet);