void main()
{
  print("Hello");// console print/output
  print(10);
  print("Mahi");
//datatype int,double,bool,String
//datatype variable = value
  String name =" Mahi ";
  int number = 10;
  double num = 10.55;
  bool isTrue=true;

  //dynamic, var
  dynamic value =10;
  value ="hello";
  value = true;
  value= 10.55;

  var x = 10; //assign data type only the first time and fixed

  //final vs const
  final currentTime= DateTime.now();//final can update on runtime
  //const curT= DateTime.now();// cant update works like constant .const update on compile time
  const pi = 3.1416;
  //null safety cant take  null directly as input
  //String name3= null;
  String? imgUrl = null;
  print (imgUrl ?? "default.png");


  //operators
int a=10;
int b=3;
  print(a+b);
  print(a-b);
  print(a*b);
  print(a/b);
  print(a%b);

 //assignment op 

 int p =5;
 p+=5;
 p-=2;
 p*=2;

 //inc,dec

 p++;
 p--;

 //comparison operators
 int age=20;
 print(age==20);
 print(age>18);
 print(age<19);
 print(age>=22);
 print(age!=20);
}