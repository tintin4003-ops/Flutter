class Animal {
  String name;

  Animal(this.name); //constructor

  void eat() {
    print("$name is eating.");
  }

  void makeSound() {
    print("$name is making sound.");
  }

}

class Dog extends Animal {

  Dog(super.name);

  @override
  void makeSound() {
    print("$name is barking.");
  }
@override
  void eat(){
    print("Super Dog: $name is eating.");
  }
}

class Cat extends Animal {
  Cat(super.name);

 @override
  void makeSound() {
    print("$name is meowing.");
  }
}

void main() {
  final dog = Dog("Bolt");
  final cat = Cat("Tom");

  dog.eat();
  dog.makeSound();
  cat.eat();
  cat.makeSound();
}