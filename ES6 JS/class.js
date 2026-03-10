class Person{
    constructor(name,age){
        this.name=name;
        this.age=age;
    }
    greet(){
        console.log('Hello,my name is ${this.name}  and I am ${this.age} years old.');
        console.log(this);
        function innerGreet(){
            console.log("Inner Greet: Hello,my name is",this.name,"and I am",this.age,"years old.");
        }
        innerGreet.call(this);

    }
}
    
