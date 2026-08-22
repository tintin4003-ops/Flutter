void main()
{
  String std1 = "Mahi";
  String std2 = "Abir";

  List<String> students = ["Mahi","Abir","Shafin","Fahim"];
  print(students[0]);

  students.add("Anika");
  print(students[4]);

  print(students.length);
  print(students);

  students.remove("Shafin");
  print(students);

  for(int i=0; i<students.length; i++)
  {
    print(students[i]);
  }
for (String student in students)
{
  print(student);

}

//Set - No same value allowed
  Set<String> name = {"Mahi","Abir","Shafin","Fahim","Tuli","Nuha"};
  print(name);
  name.add("Anika");
  print(name);
  name.add("Mahi");
  print(name);

  for(String student in name)
  {
    print(student);
  }

  //maps (key,value)
 
  Map<String,dynamic> student = { //will avoid dynamic
    "Name": "Mahi",
    "Age": 22,
    "Dept": "CSE",
    "CGPA": 3.96
  };
  print(student);
  print(student["Name"]);
  student["Age"] = 23;
  print(student["Age"]);
  student["University"] = "AIUB";
  print(student);

  student.remove("Dept");
  print(student);

//var for itteration
  for(var value in student.entries)
  {
    print("${value.key} : ${value.value}");
  }
}