abstract interface class NotificationService{
  void sendNotification(String message);
}

class EmailNotification implements NotificationService{
  @override
  void sendNotification(String message) {
    print("Sending email notification: $message");
  }
}

class SmsNotification implements NotificationService{
  @override
  void sendNotification(String message) {
    print("Sending SMS notification: $message");
  }
}

class PushNotification implements NotificationService{
  @override
  void sendNotification(String message) {
    print("Sending push notification: $message");
  }
}

class OrderService{
  final NotificationService notificationService;

  OrderService(this.notificationService);

  void placeOrder(){
    print("Placing order:");
    notificationService.sendNotification("Your order has been placed successfully!");
  }
}

void main()
{
  final orderService1 = OrderService(EmailNotification());
  orderService1.placeOrder();

  /*
    final orderService2 = OrderService(SmsNotification());
  orderService2.placeOrder();
  */ 
}