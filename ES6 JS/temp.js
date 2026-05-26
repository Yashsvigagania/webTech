const numberArray = [10, 20, 30, 40];
const student = { name: "Aarav", age: 21, course: "B.Tech" };
const extraInfo = { city: "Delhi", college: "KIET" };
function sumNumbers(...nums){
    return nums.reduce((sum,num)=>sum+num,0);
}
function mergeArrays(arr1, arr2){
    return {...arr1,...arr2};
}
function updateObject(obj, newKey, newValue){
    return{...obj,[newKey]:newValue};
}
function findMax(arr){
    return Math.max(...arr);
}
function extractElements(arr){
    var first=arr;
    var last=arr.length>1 ? arr[arr.length-1]:first;
    return {first,last};
}
function formatStudent(obj){
    const {name,course}= obj;
    return `Student ${name} enrolled in ${course}`;
}
function addDefault(a = 5, b = 10){
    return a+b;
}
function createSuccessPromise(message){
    return new Promise((resolve)=>{
        setTimeout(()=>{
            resolve(message)
        },2000);
    });
    
}

function createConditionalPromise(condition){
    return new Promise((resolve,reject)=>{
        if(condition){
            resolve("Success");
        }
        else{
            reject("Failed");
        }
    });
}

function handlePromise(promise){
    promise
    .then((result)=> console.log(result))
    .catch((error)=> console.log(error));

}

function driver(){
    console.log("---- ES6 ASSIGNMENT DRIVER START ----");
    console.log("Sum:", sumNumbers(1, 2, 3));
    console.log("Merged:", mergeArrays([1, 2], [3, 4]));
    console.log("Updated Object:", updateObject(student, "city", "Delhi"));
    console.log("Max Value:", findMax(numberArray));
    console.log("Extracted:", extractElements(numberArray));
    console.log("Formatted Student:", formatStudent(student));
    console.log("Default Add:", addDefault());
    const successPromise = createSuccessPromise("Operation Successful");
    const conditionPromise = createConditionalPromise(false);
    handlePromise(successPromise); handlePromise(conditionPromise);
    console.log("---- ES6 ASSIGNMENT DRIVER END ----");
}
driver();