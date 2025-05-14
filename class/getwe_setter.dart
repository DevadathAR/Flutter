class Person {
  String _name = "";
  String get name =>_name;
  set name(String value) =>_name = value;
  
  void calling(String other) {
    print("$other! I am $_name.");
  }
}

void main() {
  final person = Person();
  person.name = "Dev";
  person.calling("hello");
}
