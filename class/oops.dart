import 'dart:io';

class World {
  void type() {
    stdout.write("land and sea");
  }
}

class Continentals extends World {
  void type() {
    stdout.write("7");
  }
}

class Countries extends Continentals {
  void type() {
    stdout.write("India");
  }
}

class States extends Countries {
  void type() {
    stdout.write("Kerala");
  }
}

class Dist extends States {
  void type() {
    stdout.write("ern");
  }
}

void main() {
  Dist dist = Dist();
  dist
    ..type()
    ..type()
    ..type()
    ..type()
    ..type();
}
