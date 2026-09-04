//delayed used to give time to fetch data
/*void main()
{
  print("Start");

Future.delayed(Duration(seconds: 2), () {
  print("Finished");
});   

print("Getting..");
}
*/
//<generic> funtion return type
Future<String>getUserName()
{
  return Future.delayed(Duration(seconds: 2), () =>"Mahi");
}

        //FUTURE STATES
// Future
//  |______Pending (Hold)
//  |______Completed  
//          |________Success
//          |________Error

//async is used to mark a function as asynchronous and allows the use of await inside it
Future<String>getUser() async {
  //fake delay to simulate fetching data from server
  await Future.delayed(Duration(seconds: 5));
  return "Mahi";
}


Future<void> main() async {

  print("Clicked");
  print("Fetching data from server....");
// await is used to wait for the future to complete and get the value

try{
  
  final name = await getUser();
   print("username is : ");
    print(name);
}// exception handling is used to catch any errors that may occur during the execution of the code inside the try block
catch(e)
{
  print("Error: $e");
}finally{
  print("Finished");// will be executed always  
 
}
}

// main()
// |_____print("Before")
// |_____getUser()
// |       |_____server_____waiting....___play animations/Loading screen
// |_____future completed(got data)
// |_____print(name)
// |_____print("After")