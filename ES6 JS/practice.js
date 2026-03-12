let numbers = [10, 20, 30, 40]; 
let user = { name: "Aman", age: 21, city: "Delhi" }; 
/* ======================================================= 
1 
Purpose: 
Add two numbers using let keyword. 
Parameters: - a (number) - b (number) 
Constraints: - Must declare result using let. - Return the sum. 
Test Case: 
sumLet(5,5) → 10 
======================================================= */ 
function sumLet(a, b) { 
  let result=a+b;
  return result;
} 
/* ======================================================= 
2 
Purpose: 
Multiply two numbers using const. 
Parameters: - a (number) - b (number) 
Constraints: - Must use const for result variable. - Return multiplication. 
Test Case: 
multiplyConst(5,4) → 20 
======================================================= */ 
function multiplyConst(a, b) { 
  let result=a*b;
  return result; 
} 
/* ======================================================= 
3 
Purpose: 
Return square using arrow function. 
Parameters: - n (number) 
Constraints: - Must use arrow function. - No normal function allowed. 
Test Case: 
square(4) → 16 
======================================================= */ 
const square = (n) => { 
  return n*n; 
}; 
/* ======================================================= 
4 
Purpose: 
Return greeting using template literal. 
Parameters: - name (string) 
Constraints: - Must use backticks (` `). - Do not use string concatenation. 
Test Case: 
greet("Aman") → "Hello Aman" 
======================================================= */ 
function greet(name) { 
  return `Hello ${name}`;
} 
/* ======================================================= 
5 
Purpose: 
Return first two elements using array destructuring. 
Parameters: - arr (array) 
Constraints: - Must use destructuring. - Return array of first two values. 
Test Case: 
getFirstTwo(numbers) → [10,20] 
======================================================= */ 
function getFirstTwo(arr) { 
  const[a,b]=arr;
  return [a,b]; 
} 
/* ======================================================= 
6 
Purpose: 
Extract name and age using object destructuring. 
Parameters: - obj (object) 
Constraints: - Must use destructuring. - Return object containing only name and age. 
======================================================= */ 
function getUserInfo(obj) { 
  const {name,age}=obj;
  return {name,age};
} 
/* ======================================================= 
7 
Purpose: 
Add numbers using default parameter. 
Parameters: - a (number) - b (number, default 5) 
Constraints: - Must use default parameter. - Return sum. 
Test Case: 
addDefault(10) → 15 
======================================================= */ 
function addDefault(a, b = 5) { 
  let result=a+b;
  return result;
} 
/* ======================================================= 
8 
Purpose: 
Sum all numbers using rest operator. 
Parameters: - ...nums (multiple numbers) 
Constraints: - Must use rest parameter. - Use reduce(). 
Test Case: 
sumRest(1,2,3) → 6 
======================================================= */ 
function sumRest(...nums) { 
  return nums.reduce((sum,num)=> sum+num);
} 
/* ======================================================= 
9 
Purpose: 
Merge two arrays using spread operator. 
Parameters: - arr1 (array) - arr2 (array) 
Constraints: - Must use spread operator. 
======================================================= */ 
function mergeArrays(arr1, arr2) { 
  return[...arr1,...arr2]; 
} 
/* ======================================================= 
10 
Purpose: 
Clone object using spread. 
Parameters: - obj (object) 
Constraints: - Must use spread. - Do not modify original object. 
======================================================= */ 
function cloneObject(obj) { 
  return {...obj};
} 
/* ======================================================= 
11 
Purpose: 
Double all numbers using map. 
Parameters: - arr (array) 
Constraints: - Must use map(). 
======================================================= */ 
function doubleNumbers(arr) { 
  return map.arr(n=>n*2);
} 
/* ======================================================= 
12 
Purpose: 
Filter numbers greater than 20. 
Constraints: - Must use filter(). 
======================================================= */ 
function filterGreaterThan20(arr) { 
  return arr.filter(n=>n>20); 
} 
/* ======================================================= 
13 
Purpose: 
Find maximum using spread. 
Constraints: - Must use Math.max and spread. 
======================================================= */ 
function findMax(arr) { 
  return Math.max(...arr);
} 
/* ======================================================= 
14 
Purpose: 
Remove age property using destructuring. 
Constraints: - Must use destructuring with rest. 
======================================================= */ 
function removeAge(obj) { 
  const {age,...rest}=obj;
  return rest; 
} 
/* ======================================================= 
15 
Purpose: 
Create Promise that resolves message after 1 second. 
Parameters: - message (string) 
Constraints: - Must use new Promise. - Must use setTimeout. 
======================================================= */ 
function createPromise(message) { 
  return new Promise((resolve)=>{
    setTimeout(()=>{
      resolve(message);
    },1000);
  });
} 
/* ======================================================= 
16 
Purpose: 
Consume Promise using then(). 
Constraints: - Must use then(). 
======================================================= */ 
function consumeWithThen(promise) { 
  promise .then(result=>console.log(result));
} 
/* ======================================================= 
17 
Purpose: 
Handle rejected promise using catch(). 
Constraints: - Must use catch(). 
======================================================= */ 
function promiseReject() { 
  return Promise.reject("Error").catch(err=> console.log(err));
} 
/* ======================================================= 
COMBINATION QUESTIONS 
======================================================= */ 
/* ======================================================= 
18 
Purpose: 
Understand var scope. 
Expected Output: 
50 
======================================================= */ 
function trickyVarScope() {  
var x = 10; 
if (true) { var x = 50; } 
return x;  
} 
/* ======================================================= 
19 
Purpose: 
Understand let block scope. 
Expected Output: 
10 
======================================================= */ 
function trickyLetScope() {  
let x = 10; 
if (true) { let x = 50; } 
return x; 
} 
/* ======================================================= 
20 
Purpose: 
Understand arrow vs normal function this. 
Expected Output: 
"CS208 & undefined" 
======================================================= */ 
function trickyArrowThis() {  
const obj = { 
name: "CS208", 
normal: function () { return this.name; }, 
arrow: () => this.name 
}; 
return obj.normal() + " & " + obj.arrow(); 
} 
/* ======================================================= 
21 
Purpose: 
Destructuring + rest combination. 
Return length of remaining elements. 
======================================================= */ 
function trickyDestructure(arr) { 
const [a,b,...rest] = arr; 
return rest.length; 
}
/* ======================================================= 
22 
Purpose: 
Spread override order. 
Expected Output: 
30 
======================================================= */ 
function trickySpreadOverride() { 
const o1={age:21}; 
const o2={age:30}; 
return {...o1,...o2}.age;  
} 
/* ======================================================= 
23 
Purpose: 
Rest + Spread together. 
======================================================= */ 
function trickyRestSpread() {  
const nums=[1,2,3]; 
return sumRest(...nums); 
} 
/* ======================================================= 
24 
Purpose: 
Promise error flow understanding. 
Expected Output: 
"Recovered" 
======================================================= */ 
function trickyPromiseFlow() {  
return new Promise(res=>res("Start")) 
.then(r=>{throw "Error"}) 
.catch(e=>"Recovered"); 
} 
/* ======================================================= 
25 
Purpose: 
Arrow implicit return confusion. 
Expected Output: 
undefined 
======================================================= */ 
function trickyArrowReturn() { 
const fn = () => { name:"Aman" }; 
return fn(); 
} 
/* ======================================================= 
26 
Purpose: 
Map + filter chaining. 
======================================================= */ 
function trickyMapFilter(arr) {  
return arr.filter(n=>n>10).map(n=>n*2); 
} 
/* ======================================================= 
27 
Purpose: 
Clone object modification concept. 
Expected Output: 
21 
======================================================= */ 
function trickyCloneModify(obj) {  
const clone = {...obj}; 
clone.age = 30; 
return obj.age;  
} 
/* ======================================================= 
28 
Purpose: 
Default destructuring value. 
======================================================= */ 
function trickyDefaultDestructure(obj) { 
const {city="Noida"} = obj; 
return city; 
} 
/* ======================================================= 
29 
Purpose: 
Reduce without initial value. 
======================================================= */ 
function trickyReduce(arr) { 
return arr.reduce((a,b)=>a+b);  
} 
/* ======================================================= 
30 
Purpose: 
typeof with var and let. 
Expected Output: 
"number-number" 
======================================================= */ 
function trickyTypeof() {  
var a = 1; 
let b = 2; 
return typeof a + "-" + typeof b; 
} 
function main() {
  console.log("---- DRIVER START ----");

  console.log("1:", sumLet(5,5));
  console.log("2:", multiplyConst(5,4));
  console.log("3:", square(4));
  console.log("4:", greet("Aman"));
  console.log("5:", getFirstTwo(numbers));
  console.log("6:", getUserInfo(user));
  console.log("7:", addDefault(10));
  console.log("8:", sumRest(1,2,3));
  console.log("9:", mergeArrays([1,2],[3,4]));
  console.log("10:", cloneObject(user));
  console.log("11:", doubleNumbers(numbers));
  console.log("12:", filterGreaterThan20(numbers));
  console.log("13:", findMax(numbers));
  console.log("14:", removeAge(user));

  createPromise("Promise Resolved").then(console.log);
  consumeWithThen(createPromise("Hello Promise"));
  promiseReject();

  console.log("18:", trickyVarScope());
  console.log("19:", trickyLetScope());
  console.log("20:", trickyArrowThis());
  console.log("21:", trickyDestructure(numbers));
  console.log("22:", trickySpreadOverride());
  console.log("23:", trickyRestSpread());

  trickyPromiseFlow().then(console.log);

  console.log("25:", trickyArrowReturn());
  console.log("26:", trickyMapFilter(numbers));
  console.log("27:", trickyCloneModify(user));
  console.log("28:", trickyDefaultDestructure(user));
  console.log("29:", trickyReduce([1,2,3,4]));
  console.log("30:", trickyTypeof());

  console.log("---- DRIVER END ----");
}

main();