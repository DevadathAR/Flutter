import 'dart:io';

void fib(int n) {
  int a = 0;
  int b = 1;
  stdout.write("$a ");
  stdout.write("$b ");

  for (int i = 0; i <= n - 3; i++) {
    int c = a + b;
    stdout.write("$c ");
    a = c - a;
    b = c;
  }
}

void main() {
  fib(100);
}
