class Stud {
  String name = "Devadath";
  int age = 24;
  void mark(){
    double marks = 30;
    print(marks);
  }
}

void main() {
  Stud student = Stud();
  print(student.name);
  print(student.age);
  student.mark();
}
