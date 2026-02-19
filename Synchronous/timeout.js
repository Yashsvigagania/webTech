console.log("start");
setTimeout (function(){
for(let i=0;i<5;i++){} //heavy task
console.log("Hello,World");
},2000);
for(let i=0;i<5;i++){
    console.log("dfj");
}
console.log("end");