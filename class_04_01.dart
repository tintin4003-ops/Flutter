class Animal {
  void walk() {
    print("walking.");
  }

  void fly() {
    print("flying.");
  }
}

class Dog extends Animal {
  
}

void main() {
  //fina animal= Animal(); Animal cant be a object
  final animal = Animal();
  final dog = Dog();

  dog.fly();
  animal.fly();
}