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

 int age2 =18;
 bool check = true;
 print(age2>=20 && check);
 print(age2>=20 || check);

 //type conversion
 String k ="20";
 int z = int.parse(k);
 int q = 20;
 String t = q.toString();

 //control flow
 int age3 =20;
 if(age3>=18 && age3<=59)
 {
  print("enjoy the ride");
 }
 else if(age3>=60)
 {
  print("sorry, for your own good");
 }
 else
 {
print("sorry");
 }

 //nested if else
bool hasNid=true;
if(age3>=20)
{
  if(hasNid)
  {
    print("Enjoy");
  }
  if(hasNid==false)
  {
    print("Pls bring NID");
  }
}
else{
  print("sorry");
}

//switch case
String day ="Monday";
switch(day)
{
  case "Monday":
       print("Comp Quiz");
       break;
  case "Friday":
       print("Will eat good food");
       break;
  default:
       print("Holiday") ;         

}

}