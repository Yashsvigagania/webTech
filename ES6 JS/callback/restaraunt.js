function foodOrder(callback){
    console.log("ordering food...");
    setTimeout(function() {
    console.log("Food is empty");
    callback();
    },3000
);
}
function eatfood(){
    console.log("Eating food...");
}
orderfood(eatfood);