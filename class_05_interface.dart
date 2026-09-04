class Payment{
  //interface method must have body
  void pay(double tk){
    print("Paying $tk Taka.");
  }
}

class BkashPPayment implements Payment{
  @override
  void pay(double tk) {
    print("Paying $tk Taka via Bkash.");
  }
}
/*class Printer()
{
  void printDocument(){}
}
class Scanner()
{
  void scanDocument(){}
}
*/

abstract interface class Printer{
  void printDocument();//CANT HAVE BODY
}

abstract interface class Scanner{
  void scanDocument();
}

class MultiFunctionPrinter implements Printer,Scanner{
  @override
  void printDocument() {
    print("Printing document...");
  }

  @override
  void scanDocument() {
    print("Scanning document...");
  }
}

//interface vs abstract

/*abstract class Anmal{

  //can have normal method,field,abstract method,constructor
  void eat()
  {
    print("Eating..");
  }
  void makeSound();
  }
  */
  //if use ,use absrtact interface (recommended)

abstract interface class Anmal{

void eat();
void makeSound();
}

  class Dog implements Anmal{
    @override
    void makeSound() {
      print("Bark!");
    }

    @override
    void eat() {
      print("Eating..");
    }
  }