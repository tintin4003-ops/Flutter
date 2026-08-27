abstract class Animal{
  void eat(){}
   void makeSound(){}

}
class Dog extends Animal{
  @override
  void eat() {
    print("Dog is eating.");
  }

  @override
  void makeSound() {
    print("Dog is barking.");
  }
}

void main() {
  final dog = Dog();
  dog.eat();
  dog.makeSound();
}