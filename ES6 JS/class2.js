class Address{
    constructor(city,state){
        this.city=city;
        this.state=state;
    }
}

class Person{
    constructor(name,age,address){
        this.name=name;
        this.age=age;
        this.address=address;
    }
}
const addr=new Address("Bangalore","Karnataka");
const p1=new Person("Abhishek",35,addr);
console.log(p1);