import 'package:flutter/foundation.dart';

import '../models/User.dart';

class UserProvider  with ChangeNotifier {
  User  _user  = User(
    id: 5,
    name: "suhib",
    email: "email@yahoo.com",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmI6jwQtgS0Tx0pr-yfaetgTAR646afDdX1XCXBZo&s"
  );


  User get user => _user ;




}