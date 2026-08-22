class Student {
  String name;//attributes 
  int age;
 Student({required this.name, required this.age}); //constructor
void eat()
{
  print("$name is eating");
}

}





void main()
{
  Student std1 = Student(name: "Unknown", age: 0);
  print(std1.name);
  print(std1.age);

  std1.name = "Mahi";
  std1.age = 22;
  print(std1.name);
  print(std1.age);
  Student std2 = Student(name: "Unknown", age: 0);
  std2.name = "Abir"; 
  std2.age = 23;
  print(std2.name);
  print(std2.age);

  std1.eat();
}