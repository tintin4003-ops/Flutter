import 'dart:io';
List<Map<String,dynamic>> movieCollection = [];

void addMovie(){

  print("Enter Movie Name: ");
  String name = stdin.readLineSync()!;
  print("Enter Movie Rating (0 to 10): ");
  double rating = double.parse(stdin.readLineSync()!);

  if((rating < 0 || rating > 10) || double.tryParse(rating.toString()) == null){
    print("Please enter a valid rating between 0 and 10.");
    return;
  }
  movieCollection.add({"Name": name, "Rating": rating});
     print("Movie added successfully!");

}
void removeMovie()
{
   print("Enter Movie Name to remove: ");
  String name = stdin.readLineSync()!;
 String flag = "not found"; 
  for(var movie in movieCollection)
  {
    if(movie["Name"] == name)
    {
      movieCollection.remove(movie);
      print("Movie removed successfully!");
      flag = "found";
      return;
    }
  }
  if(flag == "not found")
  {
    print("Movie not found.");
  }
}

void showAllMovies()
{
  if(movieCollection.isEmpty)
  {
    print("No movies in the collection.");
    return;
  }
  print("Movie Collection:");
  for(var movie in movieCollection)
  {
    print(movie["Name"] + " - " + movie["Rating"].toString());
  }
} 

void avgRating()
{ double avgRating = 0;
  if(movieCollection.isEmpty)
  {
    print("No movies in the collection.");
    return;
  }

  for(var movie in movieCollection)
  {
    avgRating += movie["Rating"];
  }
  avgRating = avgRating / movieCollection.length;
  print("Average Rating of Movies: " + avgRating.toString());
}

void main()
{
   bool exit = false;
  while(!exit)
  {
    print("\nMovie Collection");
    print("1. Add Movie");
    print("2. Remove Movie");
    print("3. Show All Movies");
    print("4. Calculate Average Rating");
    print("5. Exit");
    print("Enter your choice: ");
    
    String choice = stdin.readLineSync()!;
    
    switch(choice)
    {
      case "1":
        addMovie();
        break;
      case "2":
          removeMovie();
        break;
      case "3":
        showAllMovies();
        break;
      case "4":
        avgRating();
        break;
      case "5":
        exit = true;
        print("Exiting the program.");
        break;
      default:
        print("Invalid choice. Please try again.");
    }
  }
}