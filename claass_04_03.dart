/*
bad design = gibing too much responsibility to a single class
//God Class

class User{
void register(){} //user should not be responsible for registering
void login(){}
void sendEmail(){}
void saveToDatabase(){} //user should not be responsible for saving to database
void generateReport(){}
}

//ignore making god class

*/
class Auth{
  void register(){}
  void login(){}
}