//polymorphism


abstract class Payment{
  void pay(double tk);//method can or not have body in abstract
}
class BkashPayment extends Payment{
  @override
  void pay(double tk) {
    print("Paying $tk Taka via Bkash.");
  }
}
class CardPayment extends Payment{
  @override
  void pay(double tk) {
    print("Paying $tk Taka via Card.");
  }
}

void processPayment(Payment payment,double tk)
{
  payment.pay(tk);
}

void main()
{
processPayment(BkashPayment(), 100);
}