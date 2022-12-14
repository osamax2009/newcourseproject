import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled2/Controller/Services.dart';
import 'package:untitled2/ProductList.dart';
import 'package:untitled2/SizeConfigration.dart';

import 'Screens/SignInScreeen.dart';

class Wrapper extends StatelessWidget {

   Wrapper({Key? key}) : super(key: key);



Services services = Services();



  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return

        FutureBuilder<String>(
            future: services.getToken(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {

                    if (snapshot.data == "true"){
                      return ProductList();
                    }else {
                     return SignInScreen();
                    }

                } else if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                    Text(snapshot.error.toString());
                } else {
                  return Text("not data yet") ;
                }
                return CircularProgressIndicator();


            });
  }
}
