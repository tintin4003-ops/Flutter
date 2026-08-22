
/**
 Student Mangement System
 -add student
 -show all student
 -avg marks
 
 */

import 'dart:io';
List<Map<String,dynamic>> students = [];

void addStudent()
{
  print("Enter student name: ");
  String name = stdin.readLineSync()!;//user input in dart.   ! means no null value
  
  print("Enter student age: ");
  int age = int.parse(stdin.readLineSync()!);
  
  print("Enter student CGPA: ");
  double cgpa = double.parse(stdin.readLineSync()!);

  students.add({"Name": name, "Age": age, "CGPA": cgpa});
  print("Student added successfully!");

}

void showAllStudents()
{
  if(students.isEmpty)
  {
    print("No students found.");
    return;
  }

  print("All Students:");
  for(int i=0; i<students.length; i++)
  {
    print("Name: ${students[i]["Name"]}, Age: ${students[i]["Age"]},  CGPA: ${students[i]["CGPA"]}");
  }
}


void calAvg(){
  
  if(students.isEmpty)
  {
    print("No students found.");
    return;
  }

  double totalCgpa = 0;
  for(int i=0; i<students.length; i++)
  {
    totalCgpa += students[i]["CGPA"];
  }

  double avgCgpa = totalCgpa / students.length;
  print("Average CGPA: $avgCgpa");
}

void main()
{
  bool isRunning = true;
  while(isRunning)
  {
    print("\nStudent Management System");
    print("1. Add Student");
    print("2. Show All Students");
    print("3. Calculate Average CGPA");
    print("4. Exit");
    print("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch(choice)
    {
      case 1:
        addStudent();
        break;
      case 2:
        showAllStudents();
        break;
      case 3:
        calAvg();
        break;
      case 4:
        print("Exiting...");
        isRunning = false;
        return;
      default:
        print("Invalid choice. Please try again.");
    }
  }
}