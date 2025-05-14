class Animal {
  void makeSound() {
    print('Some generic sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Bark! Bark!');
  }

  void legs() {
    print('4');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow!');
  }

  void ears() {
    print('2');
  }
}

void main() {
  Animal animal = Animal();
  animal.makeSound();

  Dog dog = Dog();
  dog.makeSound();
  dog.legs();

  Cat cat = Cat();
  cat.makeSound();
  cat.ears();
}
