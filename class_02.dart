  //function
void sayHello(String name, int id)
{
  print("Hello "+ name );
  //print("Hello $name you id is $id"); will use this format
}


int sum(int a,int b)
{
  int sum = a+b;
  return sum;
}

bool isEven(int number)
{
  return number % 2 == 0;
}
//name parameter

void createUser({required String name, required int age}) 
// 2nd bracket is used for named parameter
//required is used to make parameter mandatory
{
  print("User name is $name and age is $age");
}
void main()
{
  for (int i=0; i<=10;i++)
  {
    print(i);
  }

 int passwordAttempt=0;

//while is used when repeatation depends on a condition

 while(passwordAttempt<3) 
  {
    print("try again..");
    passwordAttempt++;
  }
 int i=10;
 
 //runs atleast 1 time before checking condition
  do{
    print(i);
    i++;

  } while(i<=5);

//break , continue

for (int i=0; i<=10;i++)
  {
    if(i==5)
    {
      break;
      }
    print(i);
  }
for (int i=1; i<=5;i++)
  {
    if(i==3)
    {
      continue;
      }
    print(i);
  }


sayHello("mahi",23);
int result = sum(5,3);
print(result);
print(isEven(10));
print(isEven(7));
createUser(name: "mahi", age: 23);

print("Mahi\n Muqtadir");
}