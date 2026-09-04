Future<String>getUser() async {
  //fake delay to simulate fetching data from server
  await Future.delayed(Duration(seconds: 5));
  return "Mahi";
}

Future<String>getPost() async {
  //fake delay to simulate fetching data from server
  await Future.delayed(Duration(seconds: 1));
  return "this manga is great";
}

Future<void> main() async {

  print("Clicked Newsfeed");
  print("Fetching data from server....");
  try{
    final results = await Future.wait([getUser(), getPost()]);
    print("Results: $results");
  }catch(e)
  {
    print("Error: $e");}
  }

  //Sequential vs Parallel async Execution
  // |____final post = await fetchpost();[Duration(seconds: 3)]
  // |                                                      total delay 5 seconds
  // |____final user = await fetchuser();[Duration(seconds: 2)]