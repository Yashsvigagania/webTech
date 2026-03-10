let arr1=[1,2,{name:"yashsvi"}];
let arr2=[...arr1];
console.log(arr2);
arr1[0]=10;
console.log(arr1);
console.log(arr2);
arr2[2].name="yashsvi";
console.log(arr1);
console.log(arr2);
/*if it is primitive value,it will be copied by value,but if its object,
it will copied by refernce*/