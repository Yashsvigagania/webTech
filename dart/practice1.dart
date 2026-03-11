List<int> numbers = [10, 20, 30, 40]; 
Map<String, dynamic> studentData = { 
"name": "Aarav", 
"id": 101, 
"course": "B.Tech" 
}; 
/* ----------------------------------------------------------- 
OOP CLASSES (DO NOT MODIFY) ----------------------------------------------------------- */ 
class Person { 
String name; 
Person(this.name); 
String getRole() => "Person"; 
} 
class Student extends Person { 
int id; 
String course; 
Student(String name, this.id, this.course) : super(name); 
} 
@override 
String getRole() => "Student"; 
mixin Logger { 
void log(String message) { 
print("LOG: $message"); 
} 
} 
class Teacher with Logger { 
String subject; 
Teacher(this.subject); 
} 
/* =========================================================== 
1 
Purpose: 
Add two integers. 
Parameters: - a (int) - b (int) 
Constraints: - Return sum. 
Test Case: 
add(5,5) → 10 
=========================================================== */ 
int add(int a, int b) { 
  return a+b; 
} 
/* =========================================================== 
2 
Purpose: 
Check if number is even. 
Parameters: - n (int) 
Constraints: - Must use if/else. 
- Return true or false. 
Test Case: 
isEven(4) → true 
=========================================================== */ 
bool isEven(int n) { 
  if(n%2==0){
    return true;
  }
  else{
    return false;
  }
} 
/* =========================================================== 
3 
Purpose: 
Find maximum between two numbers. 
Parameters: - a (int) - b (int) 
Constraints: - Must use if/else. 
Test Case: 
findMax(10,20) → 20 
=========================================================== */ 
int findMax(int a, int b) { 
  if(a>b){
    return a;
  }
  else{
    return b;
  }
} 
/* =========================================================== 
4 
Purpose: 
Calculate factorial using loop. 
Parameters: - n (int) 
Constraints: - Must use for or while loop. 
Test Case: 
factorial(5) → 120 
=========================================================== */ 
int factorial(int n) { 
  int result=1;
  for(int i=1;i<=n;i++){
    result*=i;
  }
  return result;
} 
/* =========================================================== 
5 
Purpose: 
Count elements in list. 
Parameters: - list (List<int>) 
Constraints: - Must use loop. 
Test Case: 
countElements(numbers) → 4 
=========================================================== */ 
int countElements(List<int> list) { 
  int count=0;
  for(int i in list){
    count++;
  }
  return count;
} 
/* =========================================================== 
6 
Purpose: 
Task is to Reverse the list. 
Parameters: - list (List<int>) 
Constraints: - Must use loop. - Return new reversed list. 
=========================================================== */ 
List<int> reverseList(List<int> list) { 
  List<int> reversed=[];
  for(int i=list.length-1;i>=0;i--){
    reversed.add(list[i]);
  }
  return reversed;
} 
/* =========================================================== 
7 
Purpose: 
Sum all numbers in list. 
Parameters: - list (List<int>) 
Constraints: - Must use loop. 
=========================================================== */ 
int sumList(List<int> list) { 
  int sum=0;
  for(int i in list){
    sum+=i;
  }
  return sum;
} 
/* =========================================================== 
8 
Purpose: 
Create Student object using Map data. 
Parameters: - data (Map<String, dynamic>) 
Constraints: - Must return Student object. 
=========================================================== */ 
Student createStudent(Map<String, dynamic> data) { 
  return Student(data["name"], data["id"], data["course"]); 
} 
/* =========================================================== 
9 
Purpose: 
Display role using polymorphism. 
Parameters: - person (Person) 
Constraints: - Must call overridden method. 
=========================================================== */ 
String displayRole(Person person) { 
  return person.getRole();
} 
// STUDENT CODE ENDS HERE 
/* =========================================================== 
10 
Purpose: 
Use mixin Logger to print message. 
Parameters: - message (String) 
Constraints: - Create Teacher object. - Call log() method. 
=========================================================== */ 
void useLogger(String message) { 
  Teacher t= Teacher("Math");
  t.log(message);
} 
/* =========================================================== 
11 
Purpose: 
Demonstrate local scope variable. 
Parameters: 
None 
Constraints: - Declare local variable inside function. - Return its value. 
=========================================================== */ 
int scopeExample() {
  int localVar=10;
  return localVar;
}
/* =========================================================== 
12 
Purpose: 
Task is to implement Grade system using switch. 
Parameters: - marks (int) 
Constraints: - Must use switch statement. 
Test Case: 
grade(90) → "A" 
=========================================================== */ 
String grade(int marks) { 
  int grad=marks~/10;
  switch(grad){
    case 10:
    case 9: return "A";
    case 8: return "B";
    case 7: return "C";
    case 6: return "D";
    default:return "F";
  }
} 
/* =========================================================== 
13 
Purpose: 
Create Future that returns message after 1 second. 
Parameters: - message (String) 
Constraints: - Must use Future.delayed. 
=========================================================== */ 
Future<String> fetchData(String message) { 
  return Future.delayed(Duration(seconds:1),(){
    return message;
  });
} 
/* =========================================================== 
14 
Purpose: 
Consume Future using async/await. 
Parameters: - future (Future<String>) 
Constraints: 
- Must use async/await. - Print result. 
=========================================================== */ 
Future<void> consumeFuture(Future<String> future) async { 
  String result= await future;
  print(result);
} 
/* =========================================================== 
15 
Purpose: 
Handle Future error using try/catch. 
Constraints: - Must use try/catch. 
=========================================================== */ 
Future<void> errorHandling() async { 
  try{
    return Future.delayed(Duration(seconds:1),(){
      throw Exception("Error");
      });
  }
  catch(e){
    print(e);
  }

} 
/* =========================================================== 
COMBINATION QUESTIONS 
=========================================================== */ 
/* =========================================================== 
16 
Purpose: 
Count even numbers using loop + if. 
Parameters: - list (List<int>) 
=========================================================== */ 
int countEven(List<int> list) { 
  int count=0;
  for(int n in list){
    if(n%2==0){
      count++;
    }
  }
  return count;
} 
/* =========================================================== 
17 
Purpose: 
To perform Inheritance + object creation. 
Parameters: 
None 
Constraints: - Create Student object. - Return role. 
=========================================================== */ 
String studentRoleTest() { 
  Student stu=Student("Yashsvi",288,"B.tech");
  return stu.getRole();
} 
/* =========================================================== 
18 
Purpose: 
To perform Mixin + object behavior. 
Constraints: - Create Teacher object. - Call log(). 
=========================================================== */ 
void mixinTest() { 
  Teacher t=Teacher("Science");
  t.log("Mixin Working"); 
} 
/* =========================================================== 
19 
Purpose: 
Future chaining using then(). 
Parameters: - message (String) 
=========================================================== */ 
Future<String> futureChain(String message) { 
  return fetchData(message).then((value){
    return value+"received";
  });
} 
/* =========================================================== 
20 
Purpose: 
async + loop combination. 
=========================================================== */ 
Future<void> asyncLoop() async { 
  for(int i=0;i<=3;i++){
    await Future.delayed(Duration(seconds:1),(){
      print(i);
    });
  } 
} 
/* =========================================================== 
21 
Purpose: 
While loop sum from 1 to n. 
Parameters: - n (int) 
=========================================================== */ 
int sumWhile(int n) { 
  int i=1;
  int sum=0;
  while(i<=n) {
    sum+=i;
    i++;
  }
  return sum;
} 
/* =========================================================== 
22 
Purpose: 
Encapsulation example using private variable. 
Constraints: - Declare private variable inside class or function. 
=========================================================== */ 
int encapsulationExample() { 
// STUDENT CODE STARTS HERE 
// STUDENT CODE ENDS HERE 
} 
/* =========================================================== 
23 
Purpose: 
Nested loop printing pattern. 
=========================================================== */ 
void nestedLoop(int n) { 
// STUDENT CODE STARTS HERE 
} 
// STUDENT CODE ENDS HERE 
/* =========================================================== 
24 
Purpose: 
Create Person object. 
Parameters: - name (String) 
=========================================================== */ 
Person createPerson(String name) { 
  return Person(name);
} 
/* =========================================================== 
25 
Purpose: 
Future.delayed returning value. 
=========================================================== */ 
Future<String> delayedMessage() { 
  return Future.delayed(Duration(seconds:1),(){
    return "Hello";
  });
} 
/* =========================================================== 
26 
Purpose: 
async returning integer sum. 
=========================================================== */ 
Future<int> asyncSum(int a, int b) async { 
  return a+b;
} 
/* =========================================================== 
27 
Purpose: 
Filter list greater than 20 using loop. 
=========================================================== */ 
List<int> filterGreaterThan20(List<int> list) { 
// STUDENT CODE STARTS HERE 
} 
// STUDENT CODE ENDS HERE 
/* =========================================================== 
28 
Purpose: 
Switch calculator. 
Parameters: - a (int) - b (int) - operator (String) 
=========================================================== */ 
dynamic calculator(int a, int b, String operator) { 
// STUDENT CODE STARTS HERE 
// STUDENT CODE ENDS HERE 
} 
/* =========================================================== 
29 
Purpose: 
Polymorphism test. 
=========================================================== */ 
String polymorphismTest() { 
// STUDENT CODE STARTS HERE 
// STUDENT CODE ENDS HERE 
} 
/* =========================================================== 
30 
Purpose: 
Display Full integration (OOP + async + loop). 
=========================================================== */ 
Future<void> integrationTest() async { 
// STUDENT CODE STARTS HERE 
// STUDENT CODE ENDS HERE 
} 