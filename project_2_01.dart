/*class Payment {
  void pay(String tyoe)
  {
    if(type=="Card")
    {
      print("Payment done by card.");
    }
    else if (type=="bkash")
    {
      print("Payment done by bkash.");
    }
    else if (type=="paypal")
    {
      print("Payment done by paypal.");
    }
    else if (type=="cash")
    {
      print("Payment done by cash.");
    }
    else if (type=="nagad")
    {
      print("Payment done by nagad.");
    }
    else
    {
      print("Invalid payment type.");
    }
  }
}
*/

abstract class PaymentMethod {
  void pay();
}

class CardPayment extends PaymentMethod {
  @override
  void pay() {
    print("Payment done by card.");
  }
}

class BkashPayment extends PaymentMethod {
  @override
  void pay() {
    print("Payment done by bkash.");
  }
}

void processPayment(PaymentMethod payment) { //dependency inversion principle
  payment.pay();

}
/*


SOLID
S: Single Responsibility Principle (separate responsibilites to specific)
O: Open/Closed Principle (example:this code when used with if else statement.solved by using abstract class and inheritance with open/closed principle)
L: Liskov Substitution Principle
I: Interface Segregation Principle
D: Dependency Inversion Principle
*/
void main(){
  processPayment(BkashPayment());
}