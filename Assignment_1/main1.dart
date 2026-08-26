import 'dart:io';
List<Map<String,dynamic>> groceryItems = [];

void addItem()
{
  print("Enter Item ID:");
  String id = stdin.readLineSync()!;

  print("Enter Item name:");
  String itemName = stdin.readLineSync()!;

  print("Enter Item price:");
  String price = stdin.readLineSync()!;
  if(double.tryParse(price) == null || double.parse(price) < 0)
  {
    print("Please enter a valid price.");
    return;
  }

  for(var item in groceryItems)
  {
    if(item["ID"] == id && item["Name"] == itemName)
    {
      print("Item already exists.");

      print("Do you want to update the price?");
      print("1. Yes");
      print("2. No");

      String choice = stdin.readLineSync()!;

      switch(choice)
      {
        case "1":
          item["Price"] = price;
          print("Price updated successfully!");
          break;

        case "2":
          print("Item not updated.");
          break;

        default:
          print("Invalid choice. Please try again.");
      }

      return;
    }

    else if(item["ID"] == id)
    {
      print("Item ID already exists. Please use a different ID.");
      return;
    }
  }

  
  groceryItems.add({"ID": id,"Name": itemName, "Price": price});

  print("Item added successfully!");
}

void showAllItems()
{
  if(groceryItems.isEmpty)
  {
    print("No items found.");
    return;
  }

  print("All Items:");
  for(var item in groceryItems)
  {
    print("ID: " + item["ID"] + ", Name: " + item["Name"] + ", Price: " + item["Price"]);
  }
}

void removeItem()
{
  print("Enter Item ID to remove:");
  String id = stdin.readLineSync()!;

  Map<String, dynamic>? itemToRemove;

  for(var item in groceryItems)
  {
    if(item["ID"] == id)
    {
      itemToRemove = item;
      break;
    }
  }

  if(itemToRemove != null)
  {
    groceryItems.remove(itemToRemove);
    print("Item removed successfully!");
  }
  else
  {
    print("Item not found.");
  }
}


void totalInvValue ()
{
  double totalValue = 0;
  for(var item in groceryItems)
  {
    totalValue += double.parse(item["Price"]);
  }
  print("Total Inventory Value: $totalValue");
}

void main()
{
  bool exit = false;
  while(!exit)
  {
    print("\nGrocery Inventory System");
    print("1. Add Item");
    print("2. Remove Item");
    print("3. Show All Items");
    print("4. Calculate Total Inventory Value");
    print("5. Exit");
    print("Enter your choice: ");
    
    String choice = stdin.readLineSync()!;
    
    switch(choice)
    {
      case "1":
        addItem();
        break;
      case "2":
          removeItem();
        break;
      case "3":
        showAllItems();
        break;
      case "4":
        totalInvValue();
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