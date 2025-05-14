import 'dart:io';

void abc() {
  int i = 0;
  int j = 0;
  int k = 0;
  for (i = 0; i < 5; i++) {
    for (k = 0; k <= 5 - i; k++) {
      stdout.write(" ");
    }
    for (j = 0; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
  for (i = 5; i >= 0; i--) {
    for (k = 0; k <= 5 - i; k++) {
      stdout.write(" ");
    }
    for (j = 0; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
}

void plmm() {
  for (int i = 1; i <= 3; i++) {
    for (int j = 3; j > i; j--) {
      stdout.write(' ');
    }
    for (int k = 1; k <= i; k++) {
      stdout.write(k);
    }
    for (int l = i - 1; l >= 1; l--) {
      stdout.write(l);
    }
    print('');
  }
}

void fun() {
  var lis = [2, 5, 3, 2, 4, 5, 3, 2, 8, 7, 1];
  int sum = 0;
  for (int i = 0; i <= 10; i++) {
    if (lis[i] % 2 != 0) {
      sum += lis[i];
    }
  }
  print(lis);
  lis.sort();
  print(lis);
  print(sum);
}

void con(){
  const int a = 34;
  const String name = "Dev";
  final int b = 4;
  final String name2 = "Devadath";
  print(name);
  print(name2);
  print(a);
  print(b);
}





int _fe = 0;
int get fe => _fe;
set fe(value) => _fe = value;
void d() {

  print(_fe);
}

void main() {
  abc();
  print("\n");
  plmm();
  print("\n");
  fun();
  d();
  DateTime now = DateTime.now();
  print('Current Time: ${now.year}:${now.month}:${now.day}:${now.hour}:${now.minute}:${now.second}:${now.millisecond}:${now.microsecond}:${now.timeZoneName}\n');

  
  print("\n");
  con();
}