mixin Logger {
  void log(String message) {
    print("Log: $message");
  }
}

class User with Logger {
  void createUser() {
    log("User Created");
  }
}

void main() {
  User u = User();
  u.createUser();
}