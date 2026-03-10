let promise=new Promise(function(resolve,reject){
    let success=true;
    if(success){
        resolve("Task completed");
    }
    else{
        reject("Task rejected")
    }
});
// promise
// .then(function(result))

/*consuming promise we use
.then()
.catch()
.finally()*/
/*task1 order food function
task2 food prepared delay of 5 sec 
task3 food delivered*/