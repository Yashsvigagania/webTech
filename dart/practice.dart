List<String> todoList = ["Buy Milk", "Study Dart", "Submit Assignment"];

Map<String, dynamic> studentData = {
  "name": "Aarav",
  "id": 101,
  "course": "B.Tech"
};
class Person {
  String name;

  Person(this.name);

  String getRole() {
    return "Person";
  }
}
class Student extends Person {
  int id;
  String course;

  Student(String name, this.id, this.course) : super(name);

  @override
  String getRole() {
    return "Student";
  }
}

class Professor extends Person {
  String subject;

  Professor(String name, this.subject) : super(name);

  @override
  String getRole() {
    return "Professor";
  }
}

dynamic calculate(int a, int b, String operator) {
  switch(operator){
    case "+":
    return a+b;
    case "-":
    return a-b;
    case "*":
    return a*b;
    case "/":
    if(b==0){
      return "error";
    }
    return a/b;
    default:
    return "Ivalid operator";
  }
}
List<String> addTask(List<String> list, String task) {
  list.add(task);
  return list;
}

List<String> removeTask(List<String> list, String task) {
  list.remove(task);
  return list;
}
void viewTasks(List<String> list) {
  for(var task in list){
    print(task);
  }
}

Student createStudent(Map<String, dynamic> data) {
  return Student(data["name"],data["id"],data["course"]);
}

String displayRole(Person person) {
  return person.getRole();
}

int countTasks(List<String> list) {
  int count=0;
  for(var task in list){
    count++;
  }
  return count;
}

Future<String> fetchData(String message) {
  return Future.delayed(Duration(seconds:1),(){
    return message;
  });
}

Future<void> consumeFuture(Future<String> future) async {
  String result= await future;
  print(result);
}

Professor createProfessor(String name, String subject) {
  return Professor(name, subject);
}

Future<void> driver() async {
  print("---- DART ASSIGNMENT DRIVER START ----");

  print("Calculator: ${calculate(10, 5, "+")}");
  print("Calculator Error: ${calculate(10, 0, "/")}");

  todoList = addTask(todoList, "Practice Flutter");
  todoList = removeTask(todoList, "Buy Milk");
  viewTasks(todoList);

  print("Task Count: ${countTasks(todoList)}");

  Student student = createStudent(studentData);
  Professor professor = createProfessor("Dr. Kumar", "AI");

  print("Student Role: ${displayRole(student)}");
  print("Professor Role: ${displayRole(professor)}");

  await consumeFuture(fetchData("Data Loaded Successfully"));

  print("---- DART ASSIGNMENT DRIVER END ----");
}

void main() async {
  await driver();
}
