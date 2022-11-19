


 import 'package:shared_preferences/shared_preferences.dart';

class Services  {

   Future<void>  setToken()  async {


     SharedPreferences _perfs  = await SharedPreferences.getInstance() ;

     _perfs.setString("token", "true") ;
   }

   Future<String>  getToken()  async {


     SharedPreferences _perfs  = await SharedPreferences.getInstance() ;

     var myToken =   _perfs.getString("token") ?? "false"  ;

     return myToken;
   }
   Future<void>  logOut()  async {


     SharedPreferences _perfs  = await SharedPreferences.getInstance() ;

     _perfs.setString("token", "false") ;
   }




 }